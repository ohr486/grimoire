defmodule GrimoireWeb.PageController do
  use GrimoireWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
