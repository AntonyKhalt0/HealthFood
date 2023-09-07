# frozen_string_literal: true

class FindDishes
  attr_reader :initial_scope

  def initialize(initial_scope)
    @initial_scope = initial_scope
  end

  def call(params = nil)
    search(initial_scope, params)
  end

  private

  def search(scope, params)
    forbidden_dish_ids = scope.eager_load(:ingredients)
                              .where(ingredients: { en_name: params['ingredients'].keys })
                              .ids
    scope.where.not(id: forbidden_dish_ids)
  end
end
