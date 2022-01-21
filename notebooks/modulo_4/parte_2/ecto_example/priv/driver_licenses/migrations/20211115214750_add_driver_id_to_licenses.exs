defmodule EctoExample.DriverLicenses.Repo.Migrations.AddDriverIdToLicenses do
  use Ecto.Migration

  def change do
    alter table("licenses") do
      add(:driver_id, references("drivers"))
    end
  end
end
