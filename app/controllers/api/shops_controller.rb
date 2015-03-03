class Api::ShopsController < ApplicationController

  def index
    render json: Shop.all
  end

  def show
    render json: Shop.find_by(token: params[:id])
    render json: Comment.new
  end

end
