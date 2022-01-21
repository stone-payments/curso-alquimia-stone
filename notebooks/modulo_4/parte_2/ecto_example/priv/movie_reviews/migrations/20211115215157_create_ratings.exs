defmodule EctoExample.MovieReviews.Repo.Migrations.CreateRatings do
  use Ecto.Migration

  def change do
    create table("ratings") do
      add(:stars, :integer)
      timestamps()
    end
  end
end
