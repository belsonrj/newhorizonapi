class ShowsController < ApplicationController
    before_action :find_show, only: [:show, :update, :destroy]

    def index
      render json: Show.all
    end
  
    def show
      render json: @show
    end
  
    def create
      render json: Show.create(show_params)
    end
  
    def update
      @show.update(show_params)
      if @show.save
        render json: @show, status: :accepted
      else
        render json: { errors: @show.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    def destroy
      render json: @show.destroy
    end
  
    private
  
    def find_show
      @show = Show.find(params[:id])
    end
  
    def show_params
      params.permit(:name, :date, :comment, :img_url)
    end
end