defmodule OncologyPharmacy.Patient do
  use Ecto.Schema
  import Ecto.Changeset

  schema "patients" do
    field :clinic_no, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(patient, attrs) do
    patient
    |> cast(attrs, [:name, :clinic_no])
    |> validate_required([:name, :clinic_no])
  end
end
