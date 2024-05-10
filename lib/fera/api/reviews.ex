# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Api.Reviews do
  @moduledoc """
  API calls for all endpoints tagged `Reviews`.
  """

  alias Fera.Connection
  import Fera.RequestBuilder

  @doc """
  Approve All Review
  Approve multiple reviews (for moderation) and all its child photos/videos (if any).

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `ids` ([String.t]): IDs of the review you want to approve_all.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec approve_all_review(Tesla.Env.client, list(String.t), keyword()) :: {:ok, nil} | {:ok, Map.t} | {:ok, Fera.Model.ApproveAllReview422Response.t} | {:error, Tesla.Env.t}
  def approve_all_review(connection, ids, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/reviews/approve_all")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {404, false},
      {405, false},
      {422, Fera.Model.ApproveAllReview422Response}
    ])
  end

  @doc """
  Approve Review
  Approve a specific review (for moderation) and all its child photos/videos (if any).

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `id` (String.t): ID of the review you want to approve.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec approve_review(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, Fera.Model.ApproveReview422Response.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def approve_review(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/reviews/#{id}/approve")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {404, false},
      {405, false},
      {422, Fera.Model.ApproveReview422Response}
    ])
  end

  @doc """
  Create Review
  Create new review.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (CreateReviewRequest): Object creation attributes.

  ### Returns

  - `{:ok, Fera.Model.Review.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_review(Tesla.Env.client, keyword()) :: {:ok, Fera.Model.Review.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def create_review(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/reviews")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Fera.Model.Review},
      {422, false}
    ])
  end

  @doc """
  Decline All Review
  Decline multiple reviews (for moderation) and all its child photos/videos (if any).

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `ids` ([String.t]): IDs of the review you want to decline_all.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec decline_all_review(Tesla.Env.client, list(String.t), keyword()) :: {:ok, nil} | {:ok, Fera.Model.DeclineAllReview422Response.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def decline_all_review(connection, ids, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/reviews/decline_all")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {404, false},
      {405, false},
      {422, Fera.Model.DeclineAllReview422Response}
    ])
  end

  @doc """
  Decline Review
  Decline a specific review (for moderation) and all its child photos/videos (if any).

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `id` (String.t): ID of the review you want to decline.
  - `opts` (keyword): Optional parameters
    - `:body` (DeclineReviewRequest): Object creation attributes.

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec decline_review(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, Map.t} | {:ok, Fera.Model.DeclineReview422Response.t} | {:error, Tesla.Env.t}
  def decline_review(connection, id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/reviews/#{id}/decline")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {404, false},
      {405, false},
      {422, Fera.Model.DeclineReview422Response}
    ])
  end

  @doc """
  Delete All Review
  Delete multiple reviews and its child photos/videos (if any).

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `ids` ([String.t]): IDs of the review you want to delete_all.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_all_review(Tesla.Env.client, list(String.t), keyword()) :: {:ok, nil} | {:ok, Map.t} | {:ok, Fera.Model.DeleteAllReview422Response.t} | {:error, Tesla.Env.t}
  def delete_all_review(connection, ids, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/reviews/delete_all")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {404, false},
      {405, false},
      {422, Fera.Model.DeleteAllReview422Response}
    ])
  end

  @doc """
  Delete Review
  Delete specific review.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `id` (String.t): ID of the review you want to delete.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_review(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def delete_review(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/reviews/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {404, false},
      {405, false}
    ])
  end

  @doc """
  List Customer Reviews
  Retrieve a list of reviews that belong to a customer, if any.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `id` (String.t): Fera  or external ID of the customer
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

  - `{:ok, Fera.Model.ListCustomerReviews200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_customer_reviews(Tesla.Env.client, String.t, keyword()) :: {:ok, Fera.Model.ListCustomerReviews200Response.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def list_customer_reviews(connection, id, opts \\ []) do
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
      |> url("/customers/#{id}/reviews")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Fera.Model.ListCustomerReviews200Response},
      {404, false}
    ])
  end

  @doc """
  List Product Reviews
  Retrieve a list of reviews that belong to a product, if any.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `id` (String.t): Fera  or external ID of the product
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

  - `{:ok, Fera.Model.ListCustomerReviews200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_product_reviews(Tesla.Env.client, String.t, keyword()) :: {:ok, Fera.Model.ListCustomerReviews200Response.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def list_product_reviews(connection, id, opts \\ []) do
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
      |> url("/products/#{id}/reviews")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Fera.Model.ListCustomerReviews200Response},
      {404, false}
    ])
  end

  @doc """
  List All Product Reviews
  Retrieve a list of product reviews. That is, retrieve all reviews that are about products.

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
  @spec list_products_reviews(Tesla.Env.client, keyword()) :: {:ok, Fera.Model.ListReviews200Response.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def list_products_reviews(connection, opts \\ []) do
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
      |> url("/products/reviews")
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
  List Reviews
  Retrieve a list of reviews.

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
  @spec list_reviews(Tesla.Env.client, keyword()) :: {:ok, Fera.Model.ListReviews200Response.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def list_reviews(connection, opts \\ []) do
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
      |> url("/reviews")
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
  Retrieve Review
  Retrieve data for a specific review.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `id` (String.t): Fera  ID of the review
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Fera.Model.Review.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec retrieve_review(Tesla.Env.client, String.t, keyword()) :: {:ok, Fera.Model.Review.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def retrieve_review(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/reviews/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Fera.Model.Review},
      {404, false}
    ])
  end

  @doc """
  Update All Review
  Update multiple reviews.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `ids` ([String.t]): IDs of the review you want to update_all.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_all_review(Tesla.Env.client, list(String.t), keyword()) :: {:ok, nil} | {:ok, Map.t} | {:ok, Fera.Model.UpdateAllReview422Response.t} | {:error, Tesla.Env.t}
  def update_all_review(connection, ids, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/reviews/update_all")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {404, false},
      {405, false},
      {422, Fera.Model.UpdateAllReview422Response}
    ])
  end

  @doc """
  Update Review
  Update data for a specific review.

  ### Parameters

  - `connection` (Fera.Connection): Connection to server
  - `id` (String.t): ID of the review you want to update.
  - `opts` (keyword): Optional parameters
    - `:body` (UpdateReviewRequest): Object creation attributes.

  ### Returns

  - `{:ok, Fera.Model.Review.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_review(Tesla.Env.client, String.t, keyword()) :: {:ok, Fera.Model.Review.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def update_review(connection, id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/reviews/#{id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {202, Fera.Model.Review},
      {404, false},
      {422, false}
    ])
  end
end
