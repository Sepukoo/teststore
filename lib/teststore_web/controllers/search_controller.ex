defmodule TeststoreWeb.SearchController do
  use TeststoreWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
