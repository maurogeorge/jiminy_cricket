defmodule JiminyCricket.Github.Issues do


  def process(repo) do
    parse_issue_url(repo)
    |> fetch
  end

  def parse_issue_url(repo), do: Regex.replace(~r({/number}), repo["issues_url"], "")

  def fetch(issue_url) do
    IO.puts issue_url
  end
end
