# frozen_string_literal: true

class Ingredient < ApplicationRecord
  has_and_belongs_to_many :meals

  validates :name, presence: true
end
