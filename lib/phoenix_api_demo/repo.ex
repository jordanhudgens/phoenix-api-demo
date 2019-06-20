defmodule PhoenixApiDemo.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_api_demo,
    adapter: Ecto.Adapters.Postgres
end
