defmodule ElixirGist2.Gists.Gist do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "gist" do
    field :name, :string
    field :description, :string
    field :markup_text, :string
    belongs_to :user, ElixirGist2.Accounts.User
    has_many :comment, ElixirGist2.Comments.Comment

    timestamps()
  end

  @doc false
  def changeset(gist, attrs) do
    gist
    |> cast(attrs, [:name, :description, :markup_text, :user_id])
    |> validate_required([:name, :description, :markup_text, :user_id])
  end
end
