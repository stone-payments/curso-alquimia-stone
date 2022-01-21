defmodule EctoExample.DriverLicenses.Repo.Migrations.CreateLicenses do
  use Ecto.Migration

  def change do
    create table("licenses") do
      add(:type, :string)
      add(:digits, :string)
      timestamps()
    end
  end
end
