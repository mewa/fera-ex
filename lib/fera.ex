defmodule Fera do
  @moduledoc """
  Helper module for initializing Fera client
  """

  defmodule RateLimiter do
    @behaviour Tesla.Middleware

    @impl true
    def call(req, next, options) do
      with {:ok, resp} <- Tesla.run(req, next) do
        retry_after = Tesla.get_header(resp, "retry-after")
  
        if retry_after do
            retry_after = Integer.parse(retry_after) |> elem(0)

          Process.send_after(self(), :try_again, retry_after * 1000)

          receive do
            :try_again ->
                call(req, next, options)
          end
        else
          {:ok, resp}
        end

      end
    end

  end

  defmodule SecretSanitizer do
    @behaviour Tesla.Middleware

    @impl true
    def call(req, next, _options) do
      {ret, env} = Tesla.run(req, next)

      {ret, Map.update!(env, :__client__, fn client ->
        update_in(env.__client__.pre, fn pre ->
          Enum.map(pre, fn
            {Tesla.Middleware.Headers, :call, [[{"secret-key", _}]]} ->
              {Tesla.Middleware.Headers, :call, [[{"secret-key", "sk_redacted"}]]}

            val ->
              val
          end)
        end)
      end)}
    end

  end

  def new(secret_key) do
    Fera.Connection.new()
    |> Map.update!(:pre, fn middleware ->
      middleware ++ [
        {Tesla.Middleware.Headers, :call, [[{"secret-key", secret_key}]]},
        {Fera.RateLimiter, :call, [[]]},
        {Fera.SecretSanitizer, :call, [[]]},
      ]
    end)
  end
end
