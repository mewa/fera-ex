# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Fera.Model.CreateCustomerRequestData do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :external_id,
    :email,
    :name,
    :display_name,
    :country_code,
    :region_name,
    :zip,
    :display_location,
    :is_anonymous,
    :is_name_visible,
    :is_location_visible,
    :is_test,
    :avatar,
    :avatar_url
  ]

  @type t :: %__MODULE__{
    :external_id => any() | nil,
    :email => String.t,
    :name => String.t | nil,
    :display_name => String.t | nil,
    :country_code => String.t | nil,
    :region_name => String.t | nil,
    :zip => String.t | nil,
    :display_location => String.t | nil,
    :is_anonymous => boolean() | nil,
    :is_name_visible => boolean() | nil,
    :is_location_visible => boolean() | nil,
    :is_test => boolean() | nil,
    :avatar => String.t | nil,
    :avatar_url => String.t | nil
  }

  def decode(value) do
    value
  end
end

