defmodule JankyBenchTest do
  use ExUnit.Case
  doctest JankyBench

  test "greets the world" do
    assert JankyBench.hello() == :world
  end
end
