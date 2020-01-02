class RemoveIngredientFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :recipes, :ingredient, null: false, foreign_key: true
  end
end
