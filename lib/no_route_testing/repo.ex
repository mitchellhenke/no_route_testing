defmodule NoRouteTesting.Repo do
  use Ecto.Repo,
    otp_app: :no_route_testing,
    adapter: Ecto.Adapters.Postgres
end
