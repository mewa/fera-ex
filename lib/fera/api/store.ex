# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Api.Store do
  @moduledoc """
  API calls for all endpoints tagged `Store`.
  """

  alias Fera.Connection
  import Fera.RequestBuilder

  @doc """
  List All Store Photos & Videos
  Retrieve a list of all photos and videos submitted by customers that are about the store or overall experience.  This returns only photos/videos that are not linked to a specific product.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Current page number, if pagination used.
    - `:page_size` (integer()): Number of items per page.
    - `:limit` (integer()): Maximum number of items retrieved.
    - `:offset` (integer()): Starting position of items request query.
    - `:"product.id"` (String.t): Filter by Fera product ID or external product ID.
    - `:"product.ids"` (String.t): Filter by multiple Fera product IDs or external product IDs. Comma-separated list or array of fields accepted.
    - `:"customer.external_id"` (String.t): External customer ID (usually the Wix, Shopify or other eCommerce platform customer ID).
    - `:customer_id` (String.t): Filter by Fera customer ID or external customer ID.
    - `:"order.id"` (String.t): Filter by Fera order ID or external order ID.
    - `:subject` (String.t): Filter by what the resource is describing; A specific product, the entire store (ie overall experience) or both (all). Default: both.
    - `:verified` (boolean()): Only show content submitted by verified sources (or unverified sources).
    - `:state` (String.t): State of the resource. Resources are initially in the `pending_approval` state when submitted by customers from the storefront.
    - `:type` (String.t): Type of media: `photo` or `video`.    Can also be used to filter the subject at the same time. For example: `product_photo`.
    - `:"review.id"` (String.t): Review that the media is a part of (submitted along with).
    - `:sort_by` (String.t): Sort (order) the response results by the given attribute.  Add `:desc` to sort in descending order, or `:asc` to sort in ascending order.  For example: created_at:desc would get you created_at in descending order.

  ### Returns

  - `{:ok, Fera.Model.ListMedia200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_store_media(Tesla.Env.client, keyword()) :: {:ok, Fera.Model.ListMedia200Response.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def list_store_media(connection, opts \\ []) do
    optional_params = %{
      :page => :query,
      :page_size => :query,
      :limit => :query,
      :offset => :query,
      :"product.id" => :query,
      :"product.ids" => :query,
      :"customer.external_id" => :query,
      :customer_id => :query,
      :"order.id" => :query,
      :subject => :query,
      :verified => :query,
      :state => :query,
      :type => :query,
      :"review.id" => :query,
      :sort_by => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/store/media")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Fera.Model.ListMedia200Response},
      {400, false}
    ])
  end

  @doc """
  List All Store Reviews
  Retrieve a list of store (overall experience) reviews. That is, retrieve all reviews that are about store and not about only 1 product.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Current page number, if pagination used.
    - `:page_size` (integer()): Number of items per page.
    - `:limit` (integer()): Maximum number of items retrieved.
    - `:offset` (integer()): Starting position of items request query.
    - `:"product.id"` (String.t): Filter by Fera product ID or external product ID.
    - `:"product.ids"` (String.t): Filter by multiple Fera product IDs or external product IDs. Comma-separated list or array of fields accepted.
    - `:"customer.external_id"` (String.t): External customer ID (usually the Wix, Shopify or other eCommerce platform customer ID).
    - `:customer_id` (String.t): Filter by Fera customer ID or external customer ID.
    - `:"order.id"` (String.t): Filter by Fera order ID or external order ID.
    - `:subject` (String.t): Filter by what the resource is describing; A specific product, the entire store (ie overall experience) or both (all). Default: both.
    - `:verified` (boolean()): Only show content submitted by verified sources (or unverified sources).
    - `:state` (String.t): State of the resource. Resources are initially in the `pending_approval` state when submitted by customers from the storefront.
    - `:source` (String.t): Source from where reviews can be added. Resources are when submitted by customers from the storefront, imported from external review app or using csv import, manual import.
    - `:channel_code` (String.t): Review Channel from where reviews are synced. e.g. amazon, facebook, trustpilot, etc.
    - `:rating` (String.t): Search for customer reviews by rating.
    - `:only_with_content` (String.t): Only show reviews with any textual content (summary or body).
    - `:"customer.email"` (String.t): Filter by customer email
    - `:search` (String.t): Search by any of the following columns: `id`, `product.id`, `product.external_id`, `product.sku`, `customer.id`, `customer.external_id`, `customer.email`, `customer.name`, `media[*].id`, etc
    - `:"counts.media"` (String.t): Search for a customer by the number of media(photos or videos) they have submitted.
    - `:date_created` (String.t): Search for customer reviews within a date range using the created_at date.
    - `:sort_by` (String.t): Sort (order) the response results by the given attribute.  Add `:desc` to sort in descending order, or `:asc` to sort in ascending order.  For example: created_at:desc would get you created_at in descending order.

  ### Returns

  - `{:ok, Fera.Model.ListReviews200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_store_reviews(Tesla.Env.client, keyword()) :: {:ok, Fera.Model.ListReviews200Response.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def list_store_reviews(connection, opts \\ []) do
    optional_params = %{
      :page => :query,
      :page_size => :query,
      :limit => :query,
      :offset => :query,
      :"product.id" => :query,
      :"product.ids" => :query,
      :"customer.external_id" => :query,
      :customer_id => :query,
      :"order.id" => :query,
      :subject => :query,
      :verified => :query,
      :state => :query,
      :source => :query,
      :channel_code => :query,
      :rating => :query,
      :only_with_content => :query,
      :"customer.email" => :query,
      :search => :query,
      :"counts.media" => :query,
      :date_created => :query,
      :sort_by => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/store/reviews")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Fera.Model.ListReviews200Response},
      {400, false}
    ])
  end

  @doc """
  Retrieve Store Rating
  Retrieve the aggregate store rating across all products and reviews.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Fera.Model.AbstractRating.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec retrieve_rating(Tesla.Env.client, keyword()) :: {:ok, Fera.Model.AbstractRating.t} | {:error, Tesla.Env.t}
  def retrieve_rating(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/store/rating")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Fera.Model.AbstractRating}
    ])
  end

  @doc """
  Retrieve Store Settings
  Retrieve store (account) settings.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Fera.Model.Store.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec retrieve_store(Tesla.Env.client, keyword()) :: {:ok, Fera.Model.Store.t} | {:error, Tesla.Env.t}
  def retrieve_store(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/store")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Fera.Model.Store}
    ])
  end
end
