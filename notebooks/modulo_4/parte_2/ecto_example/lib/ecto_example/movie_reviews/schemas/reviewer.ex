defmodule EctoExample.MovieReviews.Schemas.Reviewer do
  use Ecto.Schema

  alias EctoExample.MovieReviews.Schemas.Rating

  import Ecto.Changeset

  schema "reviewers" do
    field(:name, :string)

    has_many(:ratings, Rating)

    timestamps()
  end

  def changeset(movie, params \\ %{}) do
    movie
    |> cast(params, [:id, :name])
    |> validate_required([:name])
  end
end
