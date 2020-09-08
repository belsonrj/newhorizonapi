class VenuesController < ApplicationController
    before_action :find_venue, only: [:show, :update, :destroy]

    def index
      render json: Venue.all
    end
  
    def create
      render json: Venue.create(venue_params)
    end
  
    def show
      render json: @venue
    end
  
    def update
      @venue.update(venue_params)
      if @venue.save
        render json: @venue, status: :accepted
      else
        render json: { errors: @venue.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    def destroy
      render json: @venue.destroy
    end
  
    private
  
    def find_venue
      @venue = Venue.find(params[:id])
    end
  
    def venue_params
      params.require(:venue).permit(:name, :locale, :venue_type, :comment, :show_id)
    end
end
