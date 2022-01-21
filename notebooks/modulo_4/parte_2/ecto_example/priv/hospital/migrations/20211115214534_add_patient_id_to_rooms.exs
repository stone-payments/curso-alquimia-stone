defmodule EctoExample.Hospital.Repo.Migrations.AddPatientIdToRooms do
  use Ecto.Migration

  def change do
    alter table("rooms") do
      add(:patient_id, references("patients"))
    end
  end
end
