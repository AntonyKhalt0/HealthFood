# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it { should have_and_belong_to_many :meals }
  it { should validate_presence_of :name }
end
