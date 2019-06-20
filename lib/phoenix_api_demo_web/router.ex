defmodule PhoenixApiDemoWeb.Router do
  use PhoenixApiDemoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixApiDemoWeb do
    pipe_through :api
  end
end
