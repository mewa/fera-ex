# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.PayOrderRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :paid_at
  ]

  @type t :: %__MODULE__{
    :paid_at => DateTime.t | nil
  }

  alias Fera.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:paid_at, :datetime, nil)
  end
end

