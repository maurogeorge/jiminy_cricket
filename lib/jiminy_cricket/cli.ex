defmodule JiminyCricket.CLI do

  def main do
    JiminyCricket.Github.Repos.fetch
    |> build_repos
    |> Enum.map(&JiminyCricket.Github.Issues.process(&1))
  end

  def build_repos({:ok, repos}), do: repos
end
