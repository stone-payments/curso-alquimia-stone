defmodule EctoExample.University.Schemas.Student do
  use Ecto.Schema

  import Ecto.Changeset

  alias EctoExample.University.Schemas.Enrollment

  schema "students" do
    field(:student_name, :string)
    field(:grade, :decimal)
    field(:high_school_size, :integer)

    has_many(:enrollments, Enrollment, on_delete: :delete_all)

    timestamps()
  end

  def changeset(student, params \\ %{}) do
    student
    |> cast(params, [:id, :student_name, :grade, :high_school_size])
    |> validate_required([:student_name, :grade, :high_school_size])
    |> validate_number(:high_school_size, greater_than: 0)
  end
end
