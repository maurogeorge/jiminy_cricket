defmodule JiminyCricket.Mixfile do
  use Mix.Project

  def project do
    [app: :jiminy_cricket,
     version: "0.0.1",
     elixir: "~> 1.0.0",
     escript: escript_config,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:httpoison, :logger, :timex, :dotenv]]
  end

  # Dependencies can be hex.pm packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      { :httpoison, "~> 0.4" },
      { :jsex , "~> 2.0" },
      { :timex, "~> 0.12.6" },
      { :dotenv, git: "https://github.com/maurogeorge/dotenv_elixir", branch: "elixir1.0" },
    ]
  end

  defp escript_config do
    [ main_module: JiminyCricket.CLI ]
  end
end
