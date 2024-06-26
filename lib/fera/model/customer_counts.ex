# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.CustomerCounts do
  @moduledoc """
  Cached counts related to the customer. **This includes unpublished/pending content counts**. Note: It can take a few seconds for these counts to update after changes occur.
  """

  @derive Jason.Encoder
  defstruct [
    :reviews,
    :average_rating,
    :media,
    :orders,
    :spend
  ]

  @type t :: %__MODULE__{
    :reviews => float() | nil,
    :average_rating => float() | nil,
    :media => float() | nil,
    :orders => float() | nil,
    :spend => float() | nil
  }

  def decode(value) do
    value
  end
end

