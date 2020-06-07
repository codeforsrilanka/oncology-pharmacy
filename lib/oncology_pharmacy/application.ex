defmodule OncologyPharmacy.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the PubSub system
      {Phoenix.PubSub, name: OncologyPharmacy.PubSub},
      # Start the Ecto repository
      OncologyPharmacy.Repo,
      # Start the endpoint when the application starts
      OncologyPharmacyWeb.Endpoint
      # Starts a worker by calling: OncologyPharmacy.Worker.start_link(arg)
      # {OncologyPharmacy.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: OncologyPharmacy.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    OncologyPharmacyWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
