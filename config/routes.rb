# frozen_string_literal: true

Rails.application.routes.draw do
  get '/', to: 'kusos#new'
  resources :kusos, param: :unique_id, only: %i[show], path: '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
