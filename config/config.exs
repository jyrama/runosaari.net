# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :runosaari,
  ecto_repos: [Runosaari.Repo]

# Configures the endpoint
config :runosaari, RunosaariWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6uprQ4/elMx9vr/bG6iWeqYen6uGN75T02g72hmmAU9JRELuxzFlyBYk5U+jAyd7",
  render_errors: [view: RunosaariWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Runosaari.PubSub,
  live_view: [signing_salt: "9NuasSEz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
