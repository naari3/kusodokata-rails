# frozen_string_literal: true

Rails.application.routes.draw do
  get '/', to: 'kusos#new'
  resources :kusos, param: :unique_id, only: %i[show], path: '/'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :kusos, param: :unique_id, only: %i[new show]
    end
  end
end
