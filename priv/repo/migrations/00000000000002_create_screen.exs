defmodule Grimoire.Repo.Migrations.CreateScreen do
  use Ecto.Migration

  def change do
    create table(:screens) do
      add :book_id, :integer
      add :url, :string

      timestamps()
    end

  end
end
