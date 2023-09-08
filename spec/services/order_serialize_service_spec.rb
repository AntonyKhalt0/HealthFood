# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderSerializeService do
  subject { described_class.new.call }

  before do
    order = Order.create
    order.dishes.push(dish1, dish2)
  end

  let(:dish1) { Dish.first }
  let(:dish2) { Dish.second }

  it 'success' do
    expect(subject).to eq([{ name: 'Салат из фунчозы', count: 1 },
                           { name: 'Запеканка с зеленой гречкой и сыром', count: 1 }])
  end
end
