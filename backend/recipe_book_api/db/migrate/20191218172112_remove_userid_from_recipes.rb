class RemoveUseridFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :recipes, :user, index: true, foreign_key: true
  end
end
