class AddAuthenticationToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :login, :string
    add_column :teams, :password_digest, :string
  end
end
