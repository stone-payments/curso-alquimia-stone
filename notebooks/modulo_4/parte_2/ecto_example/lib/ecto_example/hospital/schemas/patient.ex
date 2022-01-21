defmodule EctoExample.Hospital.Schemas.Patient do
  use Ecto.Schema

  alias EctoExample.Hospital.Schemas.Room

  import Ecto.Changeset

  schema "patients" do
    field(:first_name, :string)
    field(:last_name, :string)

    has_one(:room, Room)

    timestamps()
  end

  def changeset(patient, params \\ %{}) do
    patient
    |> cast(params, [:id, :first_name, :last_name])
    |> validate_required([:first_name, :last_name])
  end
end
