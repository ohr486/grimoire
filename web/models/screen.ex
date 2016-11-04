defmodule Grimoire.Screen do
  use Grimoire.Web, :model

  schema "screens" do
    field :url, :string

    belongs_to :book, Grimoire.Book
    has_many :comments, Grimoire.Comment

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:book_id, :url])
    |> validate_required([:book_id, :url])
  end
end
