defmodule Grimoire.Repo.Migrations.CreateScreen do
  use Ecto.Migration

  def change do
    create table(:screens) do
      add :book_id, references(:books, on_delete: :delete_all)
      add :url, :string

      timestamps()
    end
    create index(:screens, [:book_id])
  end
end
