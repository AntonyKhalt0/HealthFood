class CreateDishesOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes_orders do |t|
      t.belongs_to :dish
      t.belongs_to :order

      t.timestamps
    end
  end
end
