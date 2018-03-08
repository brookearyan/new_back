class Api::V1::MemesController < ApplicationController

    def index
      @memes = Meme.all
      render json: @memes
    end

    def new
      @meme = Meme.new
      render json: meme
    end

    def create
      @meme = Meme.create(
        alias: params[:alias],
        one: params[:one],
        two: params[:two],
        three: params[:three],
        four: params[:four],
        five: params[:five],
        created_at: params[:created_at],
        likes: params[:likes]
      )
      render json: @meme
    end

    def edit
      @meme = Meme.find(params[:id])
    end
    
    def update
      @meme = Meme.find(params[:id])
      @meme.update(likes: params[:likes])
      render json: @meme
    end

    def show
      @meme = Meme.find(params[:id])
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @meme}
      end
    end

    def destroy
      @meme = Meme.find(params[:id])
      @meme.destroy
      render status: 204
    end
end
