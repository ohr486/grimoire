defmodule Grimoire.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :screen_id, references(:screens, on_delete: :delete_all)
      add :body, :text
      add :commented_at, :time

      timestamps()
    end
    create index(:comments, [:screen_id])
  end
end
