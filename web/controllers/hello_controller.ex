defmodule YoPhoenix.HelloController do
  use YoPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
