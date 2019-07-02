defmodule ElixirSdetExercise.MixProject, Hound.MixFile do
  use Mix.Project

  @version "1.0"

  def project do
    [
      app: :hound,
      version: @version,
      description: "Webdriver library for integration testing and browser automation,
      source_url: "https://github.com/HashNuke/hound"
      app: :elixir_sdet_exercise,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
      apps: :response_snapshot,
      version: "1.0.0",
      package: package(),
      deps: deps(),
      name: "Response Snapshot",
      source_url: github_url()
    ]
  end

  # Run "mix help compile.app" to learn about applications.

  def application do
    [
      applications: [:logger, :hound]
      extra_applications: [:logger],
      mod: {Hound, []},
    ]
  end



  # Run "mix help deps" to learn about dependencies.

  defp deps do
    [
      {:hound, "~> 1.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:hackney, "~> 1.5"},
      {:jason,  "~> 1.1"},
      {:earmark, "~> 1.2", only: :dev},
      {:ex_doc,  "~> 0.16", only: :dev}
      {:response_snapshot, "~>1.0", only: :test}
    ]
  end
end
