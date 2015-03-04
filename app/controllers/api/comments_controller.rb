class Api::CommentsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    render json: Comment.all
  end

  def show
    render json: Shop.find(params[:id]).comments
  end

  def create
    @shop = Shop.find(params[:id])
    @comment = Comment.new params.permit(:message)
    @comment.shop = @shop
    @comment.save
    render json: { status: :ok }
  end



end
