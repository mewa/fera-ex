# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.CreateProductRequestData do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :external_id,
    :name,
    :url,
    :thumbnail_url,
    :price,
    :sku,
    :global_id,
    :upc,
    :gtin,
    :mpn,
    :barcode,
    :brand,
    :handle,
    :tags,
    :stock,
    :status
  ]

  @type t :: %__MODULE__{
    :external_id => any() | nil,
    :name => String.t,
    :url => String.t | nil,
    :thumbnail_url => String.t | nil,
    :price => float() | nil,
    :sku => String.t | nil,
    :global_id => String.t | nil,
    :upc => String.t | nil,
    :gtin => String.t | nil,
    :mpn => String.t | nil,
    :barcode => String.t | nil,
    :brand => String.t | nil,
    :handle => String.t | nil,
    :tags => [String.t] | nil,
    :stock => float() | nil,
    :status => String.t | nil
  }

  def decode(value) do
    value
  end
end

