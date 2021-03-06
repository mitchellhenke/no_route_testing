# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :no_route_testing,
  ecto_repos: [NoRouteTesting.Repo]

# Configures the endpoint
config :no_route_testing, NoRouteTestingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GK7xsrfQQwqMAkeutMuot8MFMKy2bYIyb/dkeRQtXFEAw7bk9aby+cbfS5Lcqu3K",
  render_errors: [view: NoRouteTestingWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NoRouteTesting.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :sentry,
  dsn: "",
  environment_name:           Mix.env(),
  included_environments:      [:dev, :prod]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
