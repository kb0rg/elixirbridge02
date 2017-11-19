defmodule Pokeapp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :pokeapp,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :cowboy, :plug],
      mod: {Pokeapp, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.1"},
      {:plug, "~> 1.4"},
      {:httpoison, "~> 0.13.0"},
      {:poison, "~> 3.1"},
      {:earmark, "~> 1.2", only: :dev, runtime: :false},
      {:ex_doc, "~> 0.18.1", only: :dev, runtime: :false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
