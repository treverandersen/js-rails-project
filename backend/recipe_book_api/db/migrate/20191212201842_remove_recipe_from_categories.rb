class RemoveRecipeFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_reference :categories, :recipe, null: false, foreign_key: true
  end
end
