class AddCategoryRefToTeams < ActiveRecord::Migration[5.0]
  def change
    add_reference :teams, :category, foreign_key: true
  end
end
