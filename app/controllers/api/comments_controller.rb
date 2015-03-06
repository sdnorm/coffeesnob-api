class Api::CommentsController < ApplicationController



  def index
    render json: Shop.find(params[:shop_id]).comments
  end

  def show
    render json: Shop.find(params[:shop_id]).comments
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @comment = @shop.comments.build
    @comment.message = params[:message]
    @comment.save
    render json: { status: :ok }
  end



end
