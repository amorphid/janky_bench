defmodule JankyBench do
  @moduledoc """
  JankyBench does janky benchmarking.  For robust benchmarking, you are in the wrong place :)
  """

  @doc """
  Here's how it works:

      # number of measurements
      limit = 10_000 
      
      # function to benchmarking
      func = fn -> String.reverse("hello world") end
      
      # calculate average number of microseconds for all runs
      JankyBench.mark(limit, func)

  Example:

      iex(1)>       func = fn -> String.reverse("hello world") end
      #Function<20.128620087/0 in :erl_eval.expr/5>
      iex(2)>       JankyBench.mark(1, func)
      96527.0
      iex(3)>       JankyBench.mark(10, func)
      12.2
      iex(4)>       JankyBench.mark(100, func)
      6.69
      iex(5)>       JankyBench.mark(1_000, func)
      5.965
      iex(6)>       JankyBench.mark(10_000, func)
      3.9046
      iex(7)>       JankyBench.mark(100_000, func)
      3.74873
      iex(8)>       JankyBench.mark(1_000_000, func)
      3.539311
  """
  def mark(limit, func) do
    1..limit
    |> Enum.reduce(0, fn _, acc -> 
      :timer.tc(func) 
      |> elem(0) 
      |> Kernel.+(acc) 
    end) 
    |> Kernel./(limit)
  end
end
