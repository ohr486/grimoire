defmodule Grimoire.Comment do
  use Grimoire.Web, :model

  schema "comments" do
    field :body, :string
    field :commented_at, Ecto.Time

    belongs_to :screen, Grimoire.Screen

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:screen_id, :body, :commented_at])
    |> validate_required([:screen_id, :body, :commented_at])
  end
end
