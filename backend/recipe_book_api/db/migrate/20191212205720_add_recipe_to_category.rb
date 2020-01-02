class AddRecipeToCategory < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :recipe, index: true, foreign_key: true
  end
end
