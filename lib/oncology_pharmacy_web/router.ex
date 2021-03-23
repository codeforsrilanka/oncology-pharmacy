defmodule OncologyPharmacyWeb.Router do
  use OncologyPharmacyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", OncologyPharmacyWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", OncologyPharmacyWeb do
  #   pipe_through :api
  # end

  forward "/api", Absinthe.Plug, schema: OncologyPharmacyWeb.Schema
end
