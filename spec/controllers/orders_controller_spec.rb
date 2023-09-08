# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  let(:dish1) { Dish.first }
  let(:dish2) { Dish.second }

  describe 'GET #index' do
    before do
      order = Order.create
      order.dishes.push(dish1, dish2)
    end

    it 'success response' do
      get :index, format: :json

      json_response = JSON.parse(response.body)
      expect(response.status).to eq(200)
      expect(json_response).to eq([{ 'name' => 'Салат из фунчозы', 'count' => 1 },
                                   { 'name' => 'Запеканка с зеленой гречкой и сыром', 'count' => 1 }])
    end
  end

  describe 'POST #create' do
    it 'success response' do
      expect do
        post(:create,
             params: { order: { 'user_name' => 'Petrov Petr',
                                'dishes_ids' => "#{dish1.id} #{dish2.id}" } })
      end.to change(Order, :count).by(1)
    end
  end
end
