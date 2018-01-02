# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_request_variant

  private

  def set_request_variant
    request.variant = request.device_variant
  end
end
