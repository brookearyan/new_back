class Api::V1::MemesController < ApplicationController

    before_action :set_meme, only: [:show, :update, :destroy]

    def index
      render json: Meme.all
    end

    def create
      @meme = Meme.new(meme_params)
      @meme.save
      render json: @meme
    end

    def show
      render json: @meme
    end

    def update
      @meme.update(meme_params[:id])
        render json: @meme
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
        @meme = Meme.find_by(params[:id])
      end

      def meme_params
        params.permit(:alias, :one, :two, :three, :four, :five)
      end


end
