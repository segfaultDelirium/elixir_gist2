defmodule ElixirGist2.Gists.SavedGist do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "saved_gist" do
    belongs_to :user, ElixirGist2.Accounts.User
    belongs_to :gist, ElixirGist2.Gists.Gist
    # field :user_id, :binary_id
    # field :gist_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(saved_gist, attrs) do
    # user 
    # |>
    saved_gist
    |> cast(attrs, [:user_id, :gist_id])
    |> validate_required([:user_id, :gist_id])
  end
end
