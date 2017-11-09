class CreateDoseCocktailIngredient < ActiveRecord::Migration[5.0]
  def change
    create_table :dose_cocktail_ingredients do |t|
      t.string :Cocktail
      t.string :Ingredient
    end
  end
end
