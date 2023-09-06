# frozen_string_literal: true

class Meal < ApplicationRecord
  has_and_belongs_to_many :ingredients

  validates :name, presence: true
end
