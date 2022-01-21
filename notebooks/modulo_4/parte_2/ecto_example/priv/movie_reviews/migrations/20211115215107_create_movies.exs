defmodule EctoExample.MovieReviews.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table("movies") do
      add(:title, :string)
      add(:director, :string)
      add(:year, :integer)
      timestamps()
    end
  end
end
