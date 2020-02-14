# frozen_string_literal: true

Rails.application.routes.draw do
  get 'doses/create'
  root "cocktails#root"
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[create]
  end

  resources :doses, only: %i[destroy]
end
