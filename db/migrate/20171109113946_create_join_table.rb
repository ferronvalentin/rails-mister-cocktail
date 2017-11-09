class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :ingredients, :cocktails do |t|
      t.index [:ingredient_id, :cocktail_id]
      t.index [:cocktail_id, :ingredient_id]
    end
  end
end
