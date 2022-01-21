defmodule EctoExample.MovieReviews.Repo.Migrations.AddIndexesToMovies do
  use Ecto.Migration

  def change do
    create index("movies", [:title])
  end
end
