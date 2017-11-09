# frozen_string_literal: true

Rails.application.routes.draw do
  resources :kusos, param: :unique_id, only: %i[index show], path: '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
