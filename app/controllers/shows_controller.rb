class ShowsController < ApplicationController
    before_action :find_show, only: [:show, :update, :destroy]

    def index
      render json: Show.all
    end
  
    def show
      render json: { id: @show.id, name: @show.name, date: @show.date, comment: @show.comment, img_url: @show.img_url, artists: @show.artists, venues: @show.venues }
    end
  
    def create
      show = Show.create(show_params)
      if show.save
        render json: { id: show.id, name: show.name, date: show.date, comment: show.comment, img_url: show.img_url, artists: show.artists, venues: show.venues }
      end
    end
  
    def update
      @show.update(show_params)
      if @show.save
        render json: { id: @show.id, name: @show.name, date: @show.date, comment: @show.comment, img_url: @show.img_url, artists: @show.artists, venues: @show.venues }, status: :accepted
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
      params.require(:show).permit(:name, :date, :comment, :img_url)
    end
end