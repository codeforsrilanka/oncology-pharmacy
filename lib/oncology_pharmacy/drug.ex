defmodule OncologyPharmacy.Drug do
  use Ecto.Schema
  import Ecto.Changeset

  schema "drugs" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(drug, attrs) do
    drug
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
