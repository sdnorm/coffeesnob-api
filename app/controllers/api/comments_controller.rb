class Api::CommentsController < ApplicationController

  

  def index
    render json: Comment.all
  end

  def show
    render json: Shop.find(params[:shop_id]).comments
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @comment = Comment.new params.permit(:message)
    @comment.shop = @shop
    @comment.save
    render json: { status: :ok }
  end



end
