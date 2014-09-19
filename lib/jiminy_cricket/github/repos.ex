defmodule JiminyCricket.Github.Repos do

  @github_api_url Application.get_env(:jiminy_cricket, :github_api_url)
  @organization_name Application.get_env(:jiminy_cricket, :organization_name)

  def fetch do
    url |> HTTPoison.get |> handle_response |> build_repos
  end

  defp url do
    "#{@github_api_url}/orgs/#{@organization_name}/repos"
  end

  defp handle_response(%{status_code: 200, body: body}) do
    JSEX.decode body
  end

  defp build_repos({:ok, repos}), do: repos
end
