class AddRecipeToInstruction < ActiveRecord::Migration[6.0]
  def change
    add_reference :instructions, :recipe, index: true, foreign_key: true
  end
end
