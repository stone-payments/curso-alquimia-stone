defmodule EctoExample.Hospital.Schemas.Room do
  use Ecto.Schema

  alias EctoExample.Hospital.Schemas.Patient

  import Ecto.Changeset

  schema "rooms" do
    field(:floor, :string)
    field(:number, :string)

    belongs_to(:patient, Patient)

    timestamps()
  end

  def changeset(room, params \\ %{}) do
    room
    |> cast(params, [:id, :floor, :number])
    |> validate_required([:floor, :number])
  end
end
