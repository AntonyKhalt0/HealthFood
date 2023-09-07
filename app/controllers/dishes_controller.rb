class DishesController < ApplicationController
  def index
    @dishes = FindDishes.new(Dish.all).call(ingredients_params)
    @ingredients = Ingredient.all
    @order = Order.new
  end

  private

  def ingredients_params
    params.permit(:commit, ingredients: {})
  end
end
