class ArtistsController < ApplicationController
    before_action :find_artist, only: [:show, :update, :destroy]

    def index
      render json: Artist.all
    end
  
    def create
      render json: Artist.create(artist_params)
      #show = Show.joins(:artists)
      #show_id = Artist.find(params[:show_id])
      #show_id.artists << @artist
    end
  
    def show
      render json: @artist
    end
  
    def update
      @artist.update(artist_params)
      if @artist.save
        render json: @artist, status: :accepted
      else
        render json: { errors: @artist.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    def destroy
      render json: @artist.destroy
    end
  
    private
  
    def find_artist
      @artist = Artist.find(params[:id])
    end
  
    def artist_params
      params.require(:artist).permit(:name, :genre, :comment, :show_id)
    end
end
