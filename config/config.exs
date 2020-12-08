# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bernous_cv,
  ecto_repos: [BernousCv.Repo]

# Configures the endpoint
config :bernous_cv, BernousCvWeb.Endpoint,
  url: [host: "pure-ocean-58174.herokuapp.com"],
  secret_key_base: "heGWbVbiOc9CW1ZgUWwCWozIuKIz47YqRwb0ucwGR0jhruxyG5ZTkfkxaBL2JBuM",
  render_errors: [view: BernousCvWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BernousCv.PubSub,
  live_view: [signing_salt: "uwdGT7QL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
