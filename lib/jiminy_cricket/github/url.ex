defmodule JiminyCricket.Github.Url do

  @github_access_token System.get_env "GITHUB_ACCESS_TOKEN"

  def append_access_token(url) do
    "#{url}?access_token=#{@github_access_token}"
  end
end
