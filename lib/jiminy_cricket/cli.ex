defmodule JiminyCricket.CLI do

  def main do
    JiminyCricket.Github.Repos.fetch
    |> Enum.map(&JiminyCricket.Github.Issues.fetch(&1))
    |> List.flatten
  end
end
