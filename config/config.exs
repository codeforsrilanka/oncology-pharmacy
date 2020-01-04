# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :oncology_pharmacy,
  ecto_repos: [OncologyPharmacy.Repo]

# Configures the endpoint
config :oncology_pharmacy, OncologyPharmacyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ggVGpG5hXW8wekezrPJXvgDQyZK8Oz7Pb5+rJ0hys4E8O6WJy+3UK5NEP4h7mGg4",
  render_errors: [view: OncologyPharmacyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OncologyPharmacy.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
