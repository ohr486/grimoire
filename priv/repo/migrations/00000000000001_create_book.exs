defmodule Grimoire.Repo.Migrations.CreateBook do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :description, :text

      timestamps()
    end

  end
end
