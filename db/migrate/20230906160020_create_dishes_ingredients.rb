class CreateDishesIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes_ingredients do |t|
      t.belongs_to :ingredient
      t.belongs_to :dish
      t.timestamps
    end
  end
end
