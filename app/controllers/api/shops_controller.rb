class Api::ShopsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    render json: Shop.all
  end

  def show
    render json: Shop.find(params[:id]).comments
    @comment = Comment.new
  end

  def create
    name = params[:name]
    @shop = Shop.new
    @shop.name = name
    @shop.save
    render json: @shop
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update params.require(:shop).permit(:name)
    @shop.save
    render json: { status: :ok }
  end

end
