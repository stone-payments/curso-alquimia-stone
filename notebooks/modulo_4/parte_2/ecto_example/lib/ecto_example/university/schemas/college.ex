defmodule EctoExample.University.Schemas.College do
  use Ecto.Schema

  import Ecto.Changeset

  alias EctoExample.University.Schemas.Enrollment

  schema "colleges" do
    field(:college_name, :string)
    field(:state, :string)
    field(:price, :decimal)

    has_many(:enrollments, Enrollment, on_delete: :delete_all)

    timestamps()
  end

  def changeset(college, params \\ %{}) do
    college
    |> cast(params, [:id, :college_name, :state, :price, :inserted_at])
    |> validate_required([:college_name, :state, :price])
    |> validate_number(:price, greater_than_or_equal_to: 0)
  end
end
