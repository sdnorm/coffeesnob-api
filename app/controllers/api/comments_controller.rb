class Api::CommentsController < ApplicationController


  def index
    render json: Comment.all
  end

  def show
    render json: Shop.find(params[:id]).comments
  end

  # def create
  #   @shop = Shop.find(params[:id])
  #   if @shop.id > 0
  #     @comment = Comment.new(params.require(:comment).permit(:message))
  #     @comment.save
  #   end
  #   render json: {status: :ok}
  # end
  #
  # def update
  #   @comment = Comment.find(params[:id])
  #   @comment.update params.require(:comment).permit(:message)
  #   @comment.save
  #   render json: { status: :ok }
  # end


  def create
    @shop = Shop.find(params[:id])
    @comment = Comment.new params.require(:comment).permit(:message)
    @comment.shop = @shop
    if @comment.save
      render json: { status: :ok }
    end
  end



end
