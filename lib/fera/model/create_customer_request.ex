# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.CreateCustomerRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :data
  ]

  @type t :: %__MODULE__{
    :data => Fera.Model.CreateCustomerRequestData.t | nil
  }

  alias Fera.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:data, :struct, Fera.Model.CreateCustomerRequestData)
  end
end

