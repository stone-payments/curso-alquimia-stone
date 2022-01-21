defmodule EctoExample.Hospital.Schemas.Driver do
  use Ecto.Schema

  alias EctoExample.Hospital.Schemas.License

  import Ecto.Changeset

  schema "drivers" do
    field(:first_name, :string)
    field(:last_name, :string)

    has_one(:license, License)

    timestamps()
  end

  def changeset(driver, params \\ %{}) do
    driver
    |> cast(params, [:id, :first_name, :last_name])
    |> validate_required([:first_name, :last_name])
  end
end
