defmodule Fera do
  @moduledoc """
  Helper module for initializing Fera client
  """

  def new(secret_key) do
    Fera.Connection.new()
    |> Map.update!(:pre, fn middleware ->
      middleware ++ [{Tesla.Middleware.Headers, :call, [[{"secret-key", secret_key}]]}]
    end)
  end
end
