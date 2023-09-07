# frozen_string_literal: true

class OrderSerializeService
  def initialize; end

  def call
    serialize_data
  end

  private

  def serialize_data
    orders = []
    dishes.each do |dish|
      orders.push(DishesCountSerializer.new(dish).serializable_hash)
    end
    sort_orders(orders)
  end

  def dishes
    Dish.includes(:orders)
  end

  def sort_orders(orders)
    return_orders = orders
    return_orders.sort_by! { |order| order[:count] }
    return_orders.reverse
  end
end