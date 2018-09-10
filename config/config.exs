# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :weather,
  ecto_repos: [Weather.Repo]

# Configures the endpoint
config :weather, WeatherWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JZkvMyY+cP8U2Qw48R0CHUy5rqGAG9yD6ImnodFBASBUXaLA8P69bbfAGPf5/aV5",
  render_errors: [view: WeatherWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Weather.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
