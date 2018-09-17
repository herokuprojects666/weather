defmodule Weather.Repo.Migrations.User do
  use Ecto.Migration

  def change do
  	create table(:users) do
  		add :email, :string
  		add :password_hash, :string
  		add :active, :boolean, default: false
  		add :deleted, :boolean, default: false

  		timestamps()
  	end
  end
end
