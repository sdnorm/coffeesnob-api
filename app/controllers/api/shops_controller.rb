class Api::ShopsController < ApplicationController

  def index
    render json: Shop.all
  end

  def show
    render json: Shop.find(params[:id]).comments
    @comment = Comment.new
  end

  def create
    render json: {"test" => "hello"}
  end

  def update
    render json: {"test" => "hello"}
  end

end
