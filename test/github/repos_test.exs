defmodule ReposTest do
  use ExUnit.Case

  import JiminyCricket.Github.Repos, only: [url: 0]

  test "have correct url" do
    assert url == "https://api.github.com/orgs/Helabs/repos"
  end
end
