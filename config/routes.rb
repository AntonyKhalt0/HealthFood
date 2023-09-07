# frozen_string_literal: true

Rails.application.routes.draw do
  root 'dishes#index'

  resources :orders, only: %i[index create]
end
