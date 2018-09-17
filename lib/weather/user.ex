defmodule Weather.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user" do
    field :email, :string
    field :password_hash, :string
    field :active, :boolean, default: false
    field :deleted, :boolean, default: false

    timestamps()
  end

  def changeset(model, data \\ :empty) do
    model
      |> cast(data, [])
      |> Ecto.Changeset.validate_required([])
  end
end
