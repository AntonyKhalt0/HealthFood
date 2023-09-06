# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Meal, type: :model do
  it { should have_and_belong_to_many :ingredients }
  it { should validate_presence_of :name }
end
