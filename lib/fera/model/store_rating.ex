# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.StoreRating do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :count,
    :average
  ]

  @type t :: %__MODULE__{
    :count => float() | nil,
    :average => float() | nil
  }

  def decode(value) do
    value
  end
end

