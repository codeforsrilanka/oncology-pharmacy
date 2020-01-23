defmodule OncologyPharmacy.Repo.Migrations.CreateFormations do
  use Ecto.Migration

  def change do
    create table(:formations) do
      add :amount, :decimal
      add :unit, :string

      timestamps()
    end

  end
end
