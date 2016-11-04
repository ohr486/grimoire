defmodule Grimoire.SlideTest do
  use Grimoire.ModelCase

  alias Grimoire.Slide

  @valid_attrs %{book_id: 42, markdown: "some content", url: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Slide.changeset(%Slide{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Slide.changeset(%Slide{}, @invalid_attrs)
    refute changeset.valid?
  end
end
