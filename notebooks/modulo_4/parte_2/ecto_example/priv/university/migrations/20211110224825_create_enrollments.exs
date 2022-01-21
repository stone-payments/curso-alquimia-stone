defmodule EctoExample.University.Repo.Migrations.CreateEnrollments do
  use Ecto.Migration

  def change do
    create table("enrollments") do
      add(:course, :string)
      add(:accepted, :boolean)
      add(:applied_at, :naive_datetime_usec)
      add(:accepted_at, :naive_datetime_usec)
      add(:rejected_at, :naive_datetime_usec)
      timestamps()
    end
  end
end
