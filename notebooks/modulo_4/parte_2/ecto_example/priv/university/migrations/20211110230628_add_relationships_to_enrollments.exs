defmodule EctoExample.University.Repo.Migrations.AddRelationshipsToEnrollments do
  use Ecto.Migration

  def change do
    alter table("enrollments") do
      add(:student_id, references("students"))
      add(:college_id, references("colleges"))
    end
  end
end
