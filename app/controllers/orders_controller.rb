# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    @orders = Order.all
    respond_to do |format|
      format.json { render json: OrderSerializeService.new.call }
    end
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
end
