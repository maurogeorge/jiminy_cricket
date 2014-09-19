defmodule JiminyCricket.CLI do

  def main do
    JiminyCricket.Github.Repos.fetch
    |> Enum.map(&JiminyCricket.Github.Issues.fetch(&1))
    |> List.flatten
    |> Enum.filter(&JiminyCricket.Github.Issues.last_iteration_happened_more_than_two_weeks_ago?(&1))
  end
end
