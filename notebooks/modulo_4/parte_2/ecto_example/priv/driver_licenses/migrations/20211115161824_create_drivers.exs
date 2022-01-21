defmodule EctoExample.DriverLicenses.Repo.Migrations.CreateDrivers do
  use Ecto.Migration

  def change do
    create table("drivers") do
      add(:first_name, :string)
      add(:last_name, :string)
      timestamps()
    end
  end
end
