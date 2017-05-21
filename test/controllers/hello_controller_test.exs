defmodule YoPhoenix.HelloControllerTest do
  use YoPhoenix.ConnCase

  test "GET /hello", %{conn: conn} do
    conn = get conn, "/hello"
    assert html_response(conn, 200) =~ "Hello World, from Phoenix!"
  end

  test "GET /hello/:name", %{conn: conn} do
    conn = get conn, "/hello/Jen"
    assert html_response(conn, 200) =~ "Hello Jen, from Phoenix!"
  end
end
