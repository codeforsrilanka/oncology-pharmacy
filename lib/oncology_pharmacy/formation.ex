defmodule OncologyPharmacy.Formation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "formations" do
    field :amount, :decimal
    field :unit, :string

    timestamps()
  end

  @doc false
  def changeset(formation, attrs) do
    formation
    |> cast(attrs, [:amount, :unit])
    |> validate_required([:amount, :unit])
  end
end
