defmodule Grimoire.Book do
  use Grimoire.Web, :model

  schema "books" do
    field :title, :string
    field :description, :string

    has_many :screens, Grimoire.Screen
    has_many :slides, Grimoire.Slide

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description])
    |> validate_required([:title, :description])
  end
end
