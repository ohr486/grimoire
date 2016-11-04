defmodule Grimoire.Repo.Migrations.CreateSlide do
  use Ecto.Migration

  def change do
    create table(:slides) do
      add :book_id, :integer
      add :url, :string
      add :markdown, :text

      timestamps()
    end

  end
end
