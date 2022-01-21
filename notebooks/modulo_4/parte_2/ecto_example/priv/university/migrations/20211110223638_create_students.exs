defmodule EctoExample.University.Repo.Migrations.CreateStudents do
  use Ecto.Migration

  def change do
    create table("students") do
      add(:student_name, :string)
      add(:grade, :decimal)
      add(:high_school_size, :integer)
      timestamps()
    end
  end
end
