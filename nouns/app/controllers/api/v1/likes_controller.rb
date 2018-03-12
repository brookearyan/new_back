class Api::V1::LikesController < ApplicationController

  def index
    @likes = Like.all
    render json: @likes
  end

  def new
    @like = Like.new
  end

  def create
    @meme = Meme.find(params[:meme_id])
    @like = @meme.likes.create
    render json: @meme
  end

  def show
    @like = Like.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @like }
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    render status: 204
  end
end
