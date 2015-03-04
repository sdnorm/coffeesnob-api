class Api::ShopsController < ApplicationController

  

  def index
    render json: Shop.all
  end

  def show
    render json: Shop.find(params[:id])
  end

  def create
    name = params[:name, :address, :city, :state, :zip, :photo, :website, :rating, :description, :hours]
    @shop = Shop.new
    @shop.name = name
    @shop.save
    render json: @shop
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update params.require(:shop).permit(:name, :address, :city, :state, :zip, :photo, :website, :rating, :description, :hours)
    @shop.save
    render json: { status: :ok }
  end

end
