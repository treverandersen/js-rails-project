class RemoveRecipeFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_reference :ingredients, :recipe, null: false, foreign_key: true
  end
end
