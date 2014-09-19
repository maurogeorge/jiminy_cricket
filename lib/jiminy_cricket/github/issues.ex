defmodule JiminyCricket.Github.Issues do


  def fetch(repo) do
    parse_issue_url(repo)
    |> get_issues
    |> build_issues
  end

  def last_iteration_happened_more_than_two_weeks_ago?(issue) do
    {:ok, issue_date } = Timex.DateFormat.parse(issue["updated_at"], "{ISOz}")
    today = Timex.Date.now
    weeks = Timex.Date.diff(today, issue_date, :weeks)
    weeks <= -2
  end

  defp parse_issue_url(repo), do: Regex.replace(~r({/number}), repo["issues_url"], "")

  defp get_issues(issue_url) do
    issue_url |> HTTPoison.get |> handle_response
  end

  defp handle_response(%{status_code: 200, body: body}) do
    JSEX.decode body
  end

  defp build_issues({:ok, issues}), do: issues
end
