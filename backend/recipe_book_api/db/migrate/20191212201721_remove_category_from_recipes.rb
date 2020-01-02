class RemoveCategoryFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :recipes, :category, null: false, foreign_key: true
  end
end
