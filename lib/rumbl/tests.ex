defmodule Rumbl.Tests do
  @moduledoc "The tests context"

  alias Rumbl.Tests.Test

  def list_tests do
    [
      %Test{id: "1", name: "Test number 1",
            desc: "This is the first test!"},
      %Test{id: "2", name: "Test number 2",
            desc: "This is the second test!"}
    ]
  end

  def get_test_by(params) do
    Enum.find(list_tests(), fn test ->
      Enum.all?(params, fn{key, val} -> Map.get(test, key) == val end) end)
  end
end
