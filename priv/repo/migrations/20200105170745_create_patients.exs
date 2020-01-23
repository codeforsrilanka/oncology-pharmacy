defmodule OncologyPharmacy.Repo.Migrations.CreatePatients do
  use Ecto.Migration

  def change do
    create table(:patients) do
      add :name, :string
      add :clinic_no, :string

      timestamps()
    end

  end
end
