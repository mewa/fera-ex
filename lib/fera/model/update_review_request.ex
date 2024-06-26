# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.UpdateReviewRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :heading,
    :body,
    :state,
    :media,
    :created_at,
    :store_reply,
    :is_from_supplier,
    :is_verified,
    :external_customer_id,
    :customer_id,
    :external_product_id,
    :product_id,
    :avatar,
    :external_order_id,
    :order_id,
    :rating
  ]

  @type t :: %__MODULE__{
    :heading => String.t | nil,
    :body => String.t | nil,
    :state => String.t | nil,
    :media => [String.t] | nil,
    :created_at => DateTime.t | nil,
    :store_reply => Fera.Model.UpdateReviewRequestStoreReply.t | nil,
    :is_from_supplier => boolean() | nil,
    :is_verified => boolean() | nil,
    :external_customer_id => String.t | nil,
    :customer_id => String.t | nil,
    :external_product_id => String.t | nil,
    :product_id => String.t | nil,
    :avatar => String.t | nil,
    :external_order_id => String.t | nil,
    :order_id => String.t | nil,
    :rating => integer() | nil
  }

  alias Fera.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:store_reply, :struct, Fera.Model.UpdateReviewRequestStoreReply)
  end
end

