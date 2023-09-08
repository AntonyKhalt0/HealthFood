# frozen_string_literal: true

class DishesController < ApplicationController
  def index
    @dishes = filtered_dishes.paginate(page: params[:page], per_page: 9)
    @ingredients = Ingredient.all
    @order = Order.new
  end

  private

  def ingredients_params
    params.permit(:commit, :page, :per_page, ingredients: {})
  end

  def filtered_dishes
    forbidden_dishes = Dish.includes(:ingredients)
                            .where(ingredients: { en_name: params['ingredients']&.keys })
    Dish.where.not(id: forbidden_dishes)
  end
end
