defmodule JiminyCricket.CLI do

  def main(_) do
    JiminyCricket.Github.Repos.fetch
    |> Enum.map(&JiminyCricket.Github.Issues.fetch(&1))
    |> List.flatten
    |> Enum.filter(&JiminyCricket.Github.Issues.last_iteration_happened_more_than_two_weeks_ago?(&1))
    |> Enum.map(&JiminyCricket.Github.Issues.create_comment(&1))
  end
end
