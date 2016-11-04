defmodule Grimoire.Slide do
  use Grimoire.Web, :model

  schema "slides" do
    field :url, :string
    field :markdown, :string

    belongs_to :book, Grimoire.Book

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:book_id, :url, :markdown])
    |> validate_required([:book_id, :url, :markdown])
  end
end
