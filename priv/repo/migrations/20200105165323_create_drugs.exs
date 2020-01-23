defmodule OncologyPharmacy.Repo.Migrations.CreateDrugs do
  use Ecto.Migration

  def change do
    create table(:drugs) do
      add :name, :string

      timestamps()
    end

  end
end
