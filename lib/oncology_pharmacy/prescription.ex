defmodule OncologyPharmacy.Prescription do
  use Ecto.Schema
  import Ecto.Changeset

  schema "prescriptions" do
    field :ward, :string
    belongs_to :drug, OncologyPharmacy.Drug
    field :dosage, :decimal
    belongs_to :formation, OncologyPharmacy.Formation
    belongs_to :patient, OncologyPharmacy.Patient
    timestamps()
  end

  @doc false
  def changeset(prescription, attrs) do
    prescription
    |> cast(attrs, [:ward, :dosage])
    |> validate_required([:ward, :dosage])
  end

end
