# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DishesFilters do
  subject { described_class.new(initial_scope).call(params) }

  let(:params) { { 'ingredients' => { 'ryazhenka' => 'true', 'udon' => 'true' } } }
  let(:initial_scope) { Dish.all }

  it 'success call' do
    expect(subject.count).to eq(10)
  end
end
