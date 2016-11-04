defmodule Grimoire.CommentTest do
  use Grimoire.ModelCase

  alias Grimoire.Comment

  @valid_attrs %{body: "some content", commented_at: %{hour: 14, min: 0, sec: 0}, screen_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Comment.changeset(%Comment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Comment.changeset(%Comment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
