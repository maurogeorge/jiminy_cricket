defmodule JiminyCricket.Github.Issues do


  def fetch(repo) do
    parse_issue_url(repo)
    |> get_issues
    |> build_issues
  end

  def parse_issue_url(repo), do: Regex.replace(~r({/number}), repo["issues_url"], "")

  def get_issues(issue_url) do
    issue_url |> HTTPoison.get |> handle_response
  end

  def handle_response(%{status_code: 200, body: body}) do
    JSEX.decode body
  end

  def build_issues({:ok, issues}), do: issues
end
