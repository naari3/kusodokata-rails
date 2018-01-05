class Api::V1::KusosController < ApplicationController
  def new
    @kuso = Kuso.new
    @kuso.save
  end

  def show
    @kuso = Kuso.find_by(unique_id: params[:unique_id])
  end
end
