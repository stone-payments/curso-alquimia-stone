defmodule EctoExample.Hospital.Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def change do
    create table("rooms") do
      add(:floor, :string)
      add(:number, :string)
      timestamps()
    end
  end
end
