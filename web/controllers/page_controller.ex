defmodule WerckerPhoenix.PageController do
  use WerckerPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
