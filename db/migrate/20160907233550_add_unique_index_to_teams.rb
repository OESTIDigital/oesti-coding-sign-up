class AddUniqueIndexToTeams < ActiveRecord::Migration[5.0]
  def change
    add_index :teams, :login, :unique => true
  end
end
