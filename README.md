# JiminyCricket

A command line app that get all repos from [HE:labs](https://github.com/Helabs)
and in each repo get all issues when the last iteraction(comment, commit etc)
is bigger than 2 weeks ago.
On this issues add a Jiminy Cricket picture as a comment.

## Dependencies

To run this project you need to have:

* [Elixir](http://elixir-lang.org/install.html)


## Setup the project

1. Install the dependencies above
1. Clone the project

        $ git clone git@github.com:maurogeorge/jiminy_cricket.git

1. Go into the project folder

        $ cd jiminy_cricket

1. Install the dependencies

        $ mix deps.get

1. Create the `.env` file

        $ touch .env

    1. Set the enviroment variables:

            GITHUB_ACCESS_TOKEN: <github_access_token>

        You can learn more about [GITHUB_ACCESS_TOKEN](https://help.github.com/articles/creating-an-access-token-for-command-line-use) here.

    :warning: :warning: Warning: Those files are ignored by git and should not be commited to the repository.


## Running the project

1. Build the executable

        $ mix escript.build

1. Run the executable

        $ ./jiminy_cricket

## Roadmap

- Make works using [Tracer Bullets](https://pragprog.com/the-pragmatic-programmer/extracts/tips)
- Add tests
- Add edge cases
- Add docs
- Add some log

