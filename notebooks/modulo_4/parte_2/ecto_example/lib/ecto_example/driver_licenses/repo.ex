defmodule EctoExample.DriverLicenses.Repo do
  use Ecto.Repo,
    otp_app: :ecto_example,
    adapter: Ecto.Adapters.Postgres
end
