defmodule RumblWeb.TestView do
  use RumblWeb, :view

  alias Rumbl.Tests

  def test_name(%Tests.Test{name: name}) do
    name
    |> String.split(" ")
    |> Enum.join("-")
  end
end
