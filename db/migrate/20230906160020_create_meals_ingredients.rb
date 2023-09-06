class CreateMealsIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients_meals do |t|
      t.belongs_to :ingredient
      t.belongs_to :meal
      t.timestamps
    end
  end
end
