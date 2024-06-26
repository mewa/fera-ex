# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.UpdateOrderRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :number,
    :total,
    :total_usd,
    :line_items,
    :customer_name,
    :customer_email,
    :shipping_address,
    :billing_address,
    :is_cancelled,
    :is_test,
    :external_created_at,
    :external_updated_at,
    :fulfilled_at,
    :paid_at,
    :delivered_at,
    :notes,
    :tags,
    :external_customer_id,
    :customer_id,
    :external_id
  ]

  @type t :: %__MODULE__{
    :number => integer() | nil,
    :total => float() | nil,
    :total_usd => float() | nil,
    :line_items => [Fera.Model.LineItem.t] | nil,
    :customer_name => String.t | nil,
    :customer_email => String.t | nil,
    :shipping_address => Fera.Model.Address.t | nil,
    :billing_address => Fera.Model.Address.t | nil,
    :is_cancelled => boolean() | nil,
    :is_test => boolean() | nil,
    :external_created_at => DateTime.t | nil,
    :external_updated_at => DateTime.t | nil,
    :fulfilled_at => DateTime.t | nil,
    :paid_at => DateTime.t | nil,
    :delivered_at => DateTime.t | nil,
    :notes => String.t | nil,
    :tags => [String.t] | nil,
    :external_customer_id => String.t | nil,
    :customer_id => String.t | nil,
    :external_id => String.t | nil
  }

  alias Fera.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:line_items, :list, Fera.Model.LineItem)
     |> Deserializer.deserialize(:shipping_address, :struct, Fera.Model.Address)
     |> Deserializer.deserialize(:billing_address, :struct, Fera.Model.Address)
     |> Deserializer.deserialize(:external_created_at, :datetime, nil)
     |> Deserializer.deserialize(:external_updated_at, :datetime, nil)
     |> Deserializer.deserialize(:fulfilled_at, :datetime, nil)
     |> Deserializer.deserialize(:paid_at, :datetime, nil)
     |> Deserializer.deserialize(:delivered_at, :datetime, nil)
  end
end

