class RemoveRecipeFromInstructions < ActiveRecord::Migration[6.0]
  def change
    remove_reference :instructions, :recipe, null: false, foreign_key: true
  end
end
