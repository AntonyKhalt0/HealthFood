# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should have_and_belong_to_many :dishes }
end
