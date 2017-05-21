defmodule YoPhoenix.HelloController do
  use YoPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"name" => name, "family_name" => family_name}) do
    render conn, "show.html", name: name, family_name: family_name
  end

  def show(conn, %{"name" => name}) do
    render conn, "show.html", name: name, family_name: false
  end
end
