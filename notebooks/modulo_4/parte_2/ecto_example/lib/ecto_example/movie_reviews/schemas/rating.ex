defmodule EctoExample.MovieReviews.Schemas.Rating do
  use Ecto.Schema

  import Ecto.Changeset

  alias EctoExample.MovieReviews.Schemas.Movie
  alias EctoExample.MovieReviews.Schemas.Reviewer

  schema "ratings" do
    field(:stars, :integer)

    belongs_to(:movie, Movie)
    belongs_to(:reviewer, Reviewer)

    timestamps()
  end

  def changeset(rating, params \\ %{}) do
    rating
    |> cast(params, [:id, :stars])
    |> validate_required([:stars])
    |> foreign_key_constraint(:movie_id)
    |> foreign_key_constraint(:reviewer_id)
  end
end
