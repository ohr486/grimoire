defmodule Grimoire.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :screen_id, :integer
      add :body, :text
      add :commented_at, :time

      timestamps()
    end

  end
end
