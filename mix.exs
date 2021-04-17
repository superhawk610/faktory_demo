defmodule FaktoryDemo.MixProject do
  use Mix.Project

  def project do
    [
      app: :faktory_demo,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {FaktoryDemo, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:faktory_worker, "~> 1.3"}
    ]
  end
end
