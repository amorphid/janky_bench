defmodule JankyBenchTest do
  use ExUnit.Case

  describe "Running a benchmark" do
    test "returns a float" do
      limit = 1
      func = fn -> String.reverse("hello world") end
      assert is_float(JankyBench.mark(limit, func))
    end
  end
end
