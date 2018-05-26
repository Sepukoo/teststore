defmodule TeststoreWeb.Router do
  use TeststoreWeb, :router

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

  scope "/", TeststoreWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
	get "/search", SearchController, :index
	get "/about", AboutController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", TeststoreWeb do
  #   pipe_through :api
  # end
end
