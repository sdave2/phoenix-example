defmodule RumblWeb.TestController do
  use RumblWeb, :controller

  alias Rumbl.Tests

  def display(conn, _params) do
    tests = Tests.list_tests()
    render(conn, "index.html", tests: tests)
  end

  def show(conn, %{"id" => id}) do
    test = Tests.get_test_by(id: id)
    render(conn, "show.html", test: test)
  end

end
