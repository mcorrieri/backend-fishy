class FishController < ApplicationController

    def index
        @fish = Fish.all 
        render json: @fish
    end

    def show
        @fish = Fish.find(params[:id])
        render json: @fish
    end

    def update
        @fish = Fish.find(params[:id])
        @fish.update(fish_params)
        render json: @fish
    end

    def get_fish_by_owner
        @fish = Fish.where(owner_id: params[:id])
        render json: @fish
    end

    private
    def fish_params
        params.permit(:image, :breed, :tanksize, :carelevel, :watertype, :owner_id)

    end

end
