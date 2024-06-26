# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.Organization do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :created_at,
    :updated_at,
    :stores,
    :users
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :name => String.t | nil,
    :created_at => DateTime.t | nil,
    :updated_at => DateTime.t | nil,
    :stores => [Fera.Model.StoreWithoutNesting.t] | nil,
    :users => [Fera.Model.UserWithoutNesting.t] | nil
  }

  alias Fera.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:updated_at, :datetime, nil)
     |> Deserializer.deserialize(:stores, :list, Fera.Model.StoreWithoutNesting)
     |> Deserializer.deserialize(:users, :list, Fera.Model.UserWithoutNesting)
  end
end

