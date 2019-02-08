defmodule NoRouteTestingWeb.PageController do
  use NoRouteTestingWeb, :controller

  def index(conn, _params) do
    1/0
    render(conn, "index.html")
  end
end
