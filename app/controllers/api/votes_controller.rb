class Api::VotesController < ApplicationController


  def index
    render json: Shop.find(params[:shop_id]).votes

  end

  def show
    render json: Shop.find(params[:shop_id]).votes
  end



  def create
    @shop = Shop.find(params[:shop_id])
    @vote = Vote.new params.permit(:ratings)
    @vote.shop = @shop
    @vote.save
    render json: { status: :ok }
  end


end
