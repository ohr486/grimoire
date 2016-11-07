defmodule Grimoire.Repo.Migrations.CreateSlide do
  use Ecto.Migration

  def change do
    create table(:slides) do
      add :book_id, references(:books, on_delete: :delete_all)
      add :url, :string
      add :markdown, :text

      timestamps()
    end
    create index(:slides, [:book_id])
  end
end
