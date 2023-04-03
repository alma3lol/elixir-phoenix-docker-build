# elixir-phoenix-docker-build

Build an Elixir Phoenix app using this docker image.

## ENVIRONMENT VARIABLES

The following environment variables are required:

-   `PHX_SERVER=true`: to start the server.
-   `MIX_ENV=prod`: to build a release.
-   `DATABASE_URL=MYSQL|POSTGRESQL://USER:PASS@HOST/DB`: for database connection.
-   `SECRET_KEY_BASE=...`: needed by Phoenix. Use `mix phx.gen.secret`.
-   `GITHUB_USER=...`: github's username which can clone the repo. Needed for use with private repos.
-   `GITHUB_TOKEN=...`: github's fine-grained personal access token used instead of password. YOU MUST KNOW WHAT THIS DOES AND HOW SECURED IT SHOULD BE.
-   `GITHUB_REPO=...`: github's repo. Example: `owner/repo`.
-   `APP_NAME=...`: Phoenix app's name. Used when calling the released bin.
