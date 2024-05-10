# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.User do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :created_at,
    :updated_at,
    :organization,
    :partner,
    :stores
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :created_at => DateTime.t | nil,
    :updated_at => DateTime.t | nil,
    :organization => Fera.Model.OrganizationWithoutNesting.t | nil,
    :partner => Fera.Model.PartnerWithoutNesting.t | nil,
    :stores => [Fera.Model.StoreWithoutNesting.t] | nil
  }

  alias Fera.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:updated_at, :datetime, nil)
     |> Deserializer.deserialize(:organization, :struct, Fera.Model.OrganizationWithoutNesting)
     |> Deserializer.deserialize(:partner, :struct, Fera.Model.PartnerWithoutNesting)
     |> Deserializer.deserialize(:stores, :list, Fera.Model.StoreWithoutNesting)
  end
end

