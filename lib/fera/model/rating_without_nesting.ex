# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.RatingWithoutNesting do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :subject,
    :external_product_id,
    :product_id,
    :average,
    :count,
    :ungrouped_average,
    :ungrouped_count
  ]

  @type t :: %__MODULE__{
    :subject => String.t | nil,
    :external_product_id => String.t | nil,
    :product_id => String.t | nil,
    :average => float() | nil,
    :count => float() | nil,
    :ungrouped_average => float() | nil,
    :ungrouped_count => float() | nil
  }

  def decode(value) do
    value
  end
end

