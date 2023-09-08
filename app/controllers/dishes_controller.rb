# frozen_string_literal: true

class DishesController < ApplicationController
  def index
    @dishes = dishes_filters
    @ingredients = Ingredient.all
    @order = Order.new
  end

  private

  def ingredients_params
    params.permit(:commit, ingredients: {})
  end

  def dishes_filters
    DishesFilters.new(Dish.all).call(ingredients_params)
  end
end
