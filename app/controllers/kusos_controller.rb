# frozen_string_literal: true

class KusosController < ApplicationController
  def new
    @kuso = Kuso.find_by(unique_id: params[:k]) if params[:k]
    @kuso ||= Kuso.new
    @kuso.save
  end

  def show
    @kuso = Kuso.find_by(unique_id: params[:unique_id])
  end
end
