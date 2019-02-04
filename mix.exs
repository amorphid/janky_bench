defmodule JankyBench.MixProject do
  use Mix.Project

  #######
  # API #
  #######

  def application() do
    [
      extra_applications: [:logger]
    ]
  end

  def project() do
    [
      app: :janky_bench,
      deps: deps(),
      description: description(),
      # feel free to submit pull request w/ lower Elixir version 
      elixir: "~> 1.8",
      package: package(),
      start_permanent: Mix.env() == :prod,
      version: "0.1.0"
    ]
  end


  ###########
  # Private #
  ###########

  defp deps() do
    [
      # documentation generator
      {:ex_doc, ">= 0.0.0"}
    ]
  end

  defp description() do
    "JankyBench does janky benchmarking.  For robust benchmarking, you are in the wrong place :)"
  end

  defp package() do
    [
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/amorphid/janky_bench"}
    ]
  end
end
