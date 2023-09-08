# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    render json: dishes_count, each_serializer: DishesCountSerializer
  end

  def create
    @order = Order.new(user_name: order_params['user_name'])
    @order.dishes.push(Dish.by_ids(order_params['dishes_ids'].split(' ')))

    if @order.save
      flash.notice = 'Заказ успешно создан!'
      redirect_to :root
    else
      flash.alert = 'Заказ не был создан!'
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_name, :dishes_ids)
  end

  def dishes_count
    Dish.joins(:orders)
        .select('dishes.*, COUNT(*) AS orders_count')
        .group('dishes.id')
        .order('orders_count DESC')
  end
end
