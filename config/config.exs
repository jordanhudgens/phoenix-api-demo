# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_api_demo,
  ecto_repos: [PhoenixApiDemo.Repo]

# Configures the endpoint
config :phoenix_api_demo, PhoenixApiDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/gyqVZ1+19wL0Jyc6JtrQwyYvHCfpgWcWxqdZbs9ivxbKe+izVPLWrUhrn0X0+86",
  render_errors: [view: PhoenixApiDemoWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixApiDemo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
