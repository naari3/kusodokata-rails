# frozen_string_literal: true

require 'rails_helper'

RSpec.describe KusosController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: { unique_id: 'test' }
      expect(response).to have_http_status(:success)
    end
  end
end
