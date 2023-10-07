defmodule ElixirGist2.Repo do
  use Ecto.Repo,
    otp_app: :elixir_gist2,
    adapter: Ecto.Adapters.Postgres
end
