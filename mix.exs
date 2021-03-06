defmodule Delphi.Mixfile do
  use Mix.Project

  def project do
    [app: :delphi,
     version: "0.1.0",
     elixir: "~> 1.3",
     preferred_cli_env: [espec: :test],
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :postgrex, :ecto, :floki, :httpoison, :scrape],
     mod: {Delphi, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:espec, "~> 0.8.28", only: :test},
      {:postgrex, "~> 0.9.1"},
      {:ecto, "~>1.0.0"},
      {:scrape, "~> 1.2"},
      {:httpoison, "~>0.9.0"},
      {:floki, "~> 0.9.0"}
    ]
  end
end
