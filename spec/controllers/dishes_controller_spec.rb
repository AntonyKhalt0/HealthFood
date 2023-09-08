# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DishesController, type: :controller do
  describe 'GET #index' do
    context 'without filters' do
      it 'success response' do
        get :index

        expect(response.status).to eq 200
      end
    end

    context 'with filters' do
      it 'success response' do
        get :index, params: { ingredients: { ryazhenka: true } }

        expect(response.status).to eq 200
      end
    end
  end
end
