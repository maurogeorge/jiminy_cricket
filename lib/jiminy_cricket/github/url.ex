defmodule JiminyCricket.Github.Url do

  def append_access_token(url) do
    "#{url}?access_token=#{github_access_token}"
  end

  defp github_access_token do
    System.get_env("GITHUB_ACCESS_TOKEN")
  end
end
