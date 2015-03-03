class Api::CommentsController < ApplicationController

  def create
    render json: Shop.find(params[:id])

    render json: Comment.new params.require(:comment).permit(:message)
    render json:  @comment.shop


end
