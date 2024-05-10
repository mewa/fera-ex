# Fera

 # Introduction Welcome to the Fera reviews and user-generated content Private API.  This API is meant for private data access by account owners, their developers and app partners.  Please visit [developers.fera.ai](https://developers.fera.ai?ref&#x3D;open_api&amp;api_type&#x3D;private) for our full API docs information or visit [our website](https://www.fera.ai?ref&#x3D;open_api&amp;type&#x3D;developer&amp;api_type&#x3D;private) to learn more about what Fera is and how you can use it.  ## Private vs Public API This documentation is for the **PRIVATE Fera API**. Your API keys used in this API should never be made available to your shoppers and you should never directly display data retrieved with this API to your shoppers without sanitation first.  If you&#39;re looking to fetch public-safe customer review data, customer photos, videos, etc to display within the storefront or on the website without sanitization first then you probably want to use [Fera.js - our easy-to-use JavaScript SDK](https://developers.fera.ai/docs/fera-js-intro) instead.  ## Request Format Fera follows a RESTful API design pattern. Most things should be intuitive to those that are familiar with REST.  The Fera Private API accepts &#x60;multi-part/form&#x60; or &#x60;application/json&#x60; request bodies but will always respond with &#x60;application/json&#x60;.  ### Authentication The Fera API offers two forms of authentication:   - API Key   - OAuth2  OAuth2 authentication is meant for Fera Partner Apps and integrations. [Partners can create a new app by from here](https://partners.fera.ai/apps/new).  If you&#39;re a merchant or developer working on behalf of a merchant, then you should be using API Key authentication.  ### Rate Limits If you hit our rate limits you will receive 429 error as is standard for any API.  Most Fera accounts have a 60 request per minute limit, however you can contact us to request a higher rate limit if you need it.  ## Response Format ### Create and update response structure Create and update operations will return a JSON response with the data of the modified object.  ### List response structure List responses will always return a JSON array where there is a &#x60;data&#x60; key that contains the list items and a &#x60;meta&#x60; key that contains pagination.  #### Pagination For any list requests you can include a &#x60;page&#x60; parameter to navigate between pages of data.  You&#39;ll also receive a &#x60;meta&#x60; attribute that contains the total number of items in the list, total pages, etc.  If you prefer, list requests also accept a &#x60;limit&#x60; and &#x60;offset&#x60; parameter if you prefer to do your own pagination.  ### Error responses Unsuccessful responses will always return a JSON object that contains a &#x60;message&#x60; key that tells you what the error was in plain English.  Some unsuccessful responses will also include an &#x60;errors&#x60; object where the key is the problematic field (like for example the one that failed validation) and the value is an array of problems (like what&#39;s wrong with them).  ## Other good things to know - Fera object IDs always start with &#39;f&#39;. They are universally unique within Fera, but not meant to be used as security tokens (so please do not do that). - If you&#39;re using a filter or endpoint that isn&#39;t documented it&#39;s probably because we added an alias for the real endpoint,  which should be documented here. We recommend you use the documented endpoints and filters at all times when possible. - If you&#39;re stuck on something please reach out to our support team via the live chat one our site. Tell them you&#39;re a developer and they&#39;ll make sure you get more &#39;technical&#39; attention.  

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `fera` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:fera, "~> 3.14.1"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/fera][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :fera, base_url: "https://api.fera.ai/v3/private"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`Fera.Connection.new/1`:

```elixir
client = Fera.Connection.new(base_url: "https://api.fera.ai/v3/private")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/fera
