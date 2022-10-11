class AddReceipesRefToReceipeFoods < ActiveRecord::Migration[7.0]
  def change
    add_reference :receipe_foods, :receipes, null: false, foreign_key: true
  end
end
