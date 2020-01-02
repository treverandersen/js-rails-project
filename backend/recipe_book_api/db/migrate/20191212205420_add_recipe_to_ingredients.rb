class AddRecipeToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredients, :recipe, index: true, foreign_key: true
  end
end
