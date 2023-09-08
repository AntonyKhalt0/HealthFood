# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DishesCountSerializer do
  subject { described_class.new(dish).serializable_hash }

  let(:dish) { Dish.first }

  it 'success serialization' do
    expect(subject).to eq({ name: dish.name, count: 0 })
  end
end
