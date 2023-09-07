# frozen_string_literal: true

class DishesCountSerializer < ActiveModel::Serializer
  attributes :name
  attributes :count

  def name
    object.name
  end

  def count
    object.orders.count
  end
end
