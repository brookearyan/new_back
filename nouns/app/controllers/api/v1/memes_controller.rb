class Api::V1::MemesController < ApplicationController

  def show
     @meme = Meme.find(params[:id])
     respond_to do |format|
       format.html { render :show }
       format.json { render json: @meme}
     end
  end

  def index
     @notes = Note.all
     render json: @notes
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      redirect_to meme
    else
      render 'new'
    end
  end

  def edit
    @meme = Meme.find(params[:id])
  end

  def update
    @meme = Meme.find(params[:id])
    if @meme.update_attributes(meme_params)
      redirect_to @meme
    else
      render 'edit'
    end
  end

  private

  def meme_params
    params.require(:meme).permit(:id, :alias, :one, :two, :three, :four, :five)
  end


end
