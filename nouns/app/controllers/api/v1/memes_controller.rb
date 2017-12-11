class Api::V1::MemesController < ApplicationController


    before_action :set_meme, only: [:show, :update, :destroy]

    def index
      render json: Meme.all
    end

    def create
      meme = Meme.new(meme_params)
      if meme.save
        render json: meme
      else
        render json: { message: meme.errors }, status: 400
      end
    end

    def show
      render json: @meme
    end

    def update
      if @meme.update(meme_params)
        render json: @meme
      else
        render json: { message: @meme.errors }, status: 400
      end
    end

    def destroy
      if @meme.destroy
        render status: 204
      else
        render json: { message: "Unable to remove this meme" }, status: 400
      end
    end

    private

      def set_meme
        @meme = Meme.find_by(id: params[:id])
      end

      def meme_params
        params.require(:meme).permit(:alias, :one, :two, :three, :four, :five)
      end


end
