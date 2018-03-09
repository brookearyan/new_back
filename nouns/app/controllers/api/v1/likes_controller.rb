class Api::V1::LikesController < ApplicationController
  belongs_to :like

  def index
    @likes = Like.all
    render json: @likes
  end

  def new
    @like = Like.new
  end

  def create
    @like = Like.create(
      meme_id: params[:meme_id]
    )
    render json: @like
  end

  def show
    @like = Like.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @like}
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    render status: 204
  end
end
