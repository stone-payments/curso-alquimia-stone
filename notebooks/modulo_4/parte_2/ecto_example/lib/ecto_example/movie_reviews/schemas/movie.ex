defmodule EctoExample.MovieReviews.Schemas.Movie do
  use Ecto.Schema

  alias EctoExample.MovieReviews.Schemas.Rating

  import Ecto.Changeset

  schema "movies" do
    field(:title, :string)
    field(:director, :string)
    field(:year, :integer)

    has_many(:ratings, Rating)

    timestamps()
  end

  def changeset(movie, params \\ %{}) do
    movie
    |> cast(params, [:id, :title, :director, :year])
    |> validate_required([:title, :director, :year])
  end
end
