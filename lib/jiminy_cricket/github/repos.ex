defmodule JiminyCricket.Github.Repos do

  @github_api_url Application.get_env(:jiminy_cricket, :github_api_url)
  @organization_name Application.get_env(:jiminy_cricket, :organization_name)
  @github_access_token System.get_env "GITHUB_ACCESS_TOKEN"

  def fetch do
    url |> HTTPoison.get |> handle_response |> build_repos
  end

  defp url do
    "#{@github_api_url}/orgs/#{@organization_name}/repos?access_token=#{@github_access_token}"
  end

  defp handle_response(%{status_code: 200, body: body}) do
    JSEX.decode body
  end

  defp build_repos({:ok, repos}), do: repos
end
