# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(user_name: order_params['user_name'])
    @order.dishes.push(dishes)

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

  def dishes
    Dish.where(id: order_params['dishes_ids'].split(' '))
  end
end
