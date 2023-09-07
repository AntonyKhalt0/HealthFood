# frozen_string_literal: true

class Dish < ApplicationRecord
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :orders

  validates :name, presence: true

  scope :by_ids, ->(ids) { where(id: ids) }
end
