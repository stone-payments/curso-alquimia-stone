defmodule EctoExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Enrollments
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      EctoExample.Hospital.Repo,
      EctoExample.DriverLicenses.Repo,
      EctoExample.University.Repo,
      EctoExample.MovieReviews.Repo
    ]

    opts = [strategy: :one_for_one, name: EctoExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
