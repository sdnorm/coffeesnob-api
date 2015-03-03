class Api::CommentsController < ApplicationController

  def create
    @shop = Shop.find(params[:id])

    @comment = Comment.new params.require(:comment).permit(:message)
    @comment.shop = @shop


end
