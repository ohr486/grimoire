defmodule Grimoire.Book do
  use Grimoire.Web, :model

  schema "books" do
    field :title, :string
    field :description, :string

    has_many :screens, Grimoire.Screen, on_delete: :delete_all
    has_many :slides, Grimoire.Slide, on_delete: :delete_all

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
