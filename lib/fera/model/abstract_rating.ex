# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.AbstractRating do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :rating,
    :count
  ]

  @type t :: %__MODULE__{
    :rating => float() | nil,
    :count => float() | nil
  }

  def decode(value) do
    value
  end
end

