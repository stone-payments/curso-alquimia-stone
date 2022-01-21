defmodule EctoExample.MovieReviews.Repo.Migrations.CreateReviewers do
  use Ecto.Migration

  def change do
    create table("reviewers") do
      add(:name, :string)
      timestamps()
    end
  end
end
