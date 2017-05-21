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

  test "GET /hello/:name/:family_name", %{conn: conn} do
    conn = get conn, "/hello/Jen/Smith"
    assert conn.status == 200
    assert conn.resp_body =~ "Hello Jen, from Phoenix!"
    assert conn.resp_body =~ "Your last name is Smith"
  end

  test "GET /hello/:name/:family_name/:whatever", %{conn: conn} do
    conn = get conn, "/hello/Jen/Smith/Whatever"
    assert conn.status == 404
  end
end
