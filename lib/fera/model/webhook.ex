# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.Webhook do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :event_name,
    :url,
    :status,
    :is_enabled,
    :response_code,
    :triggered_at,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :event_name => String.t | nil,
    :url => String.t | nil,
    :status => String.t | nil,
    :is_enabled => boolean() | nil,
    :response_code => integer() | nil,
    :triggered_at => DateTime.t | nil,
    :created_at => DateTime.t | nil,
    :updated_at => DateTime.t | nil
  }

  alias Fera.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:triggered_at, :datetime, nil)
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end
