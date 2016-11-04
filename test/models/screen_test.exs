defmodule Grimoire.ScreenTest do
  use Grimoire.ModelCase

  alias Grimoire.Screen

  @valid_attrs %{book_id: 42, url: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Screen.changeset(%Screen{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Screen.changeset(%Screen{}, @invalid_attrs)
    refute changeset.valid?
  end
end
