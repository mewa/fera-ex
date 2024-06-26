# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias Fera.Connection
  import Fera.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Customer): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def customer_create_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Customer): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def customer_delete_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Customer): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def customer_update_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Media): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def media_approve_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Media): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def media_create_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Media): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def media_decline_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Media): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def media_delete_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Media): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def media_update_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Review): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def review_approve_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Review): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def review_create_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Review): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def review_decline_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Review): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def review_delete_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `jwt` (any()): Standard HS256 (HMAC SHA256) [JWT token](https://jwt.io) encrypted with your store's secret key or your apps' client secret that contains:   `webhook_id`, `webhook_event_name`, `store_domain`, `store_public_key`, `store_id`, `owner_email` and `exp` (expiry).    JWT tokens expire after 1 hour
  - `opts` (keyword): Optional parameters
    - `:body` (Review): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  
  def review_update_post(connection, jwt, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("")
      |> add_param(:query, :jwt, jwt)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end
end
