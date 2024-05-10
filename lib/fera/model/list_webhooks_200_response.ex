# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.ListWebhooks200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :data,
    :meta
  ]

  @type t :: %__MODULE__{
    :data => [Fera.Model.Webhook.t] | nil,
    :meta => Fera.Model.ListMetaParam.t | nil
  }

  alias Fera.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:data, :list, Fera.Model.Webhook)
     |> Deserializer.deserialize(:meta, :struct, Fera.Model.ListMetaParam)
  end
end
