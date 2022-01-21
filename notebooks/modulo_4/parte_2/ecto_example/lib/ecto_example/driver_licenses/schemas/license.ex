defmodule EctoExample.Hospital.Schemas.License do
  use Ecto.Schema

  alias EctoExample.Hospital.Schemas.Driver

  import Ecto.Changeset

  schema "drivers" do
    field(:type, :string)
    field(:digits, :string)

    belongs_to(:driver, Driver)

    timestamps()
  end

  def changeset(license, params \\ %{}) do
    license
    |> cast(params, [:id, :type, :digits])
    |> validate_required([:type, :digits])
  end
end
