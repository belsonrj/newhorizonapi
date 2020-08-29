class EventsController < ApplicationController
    before_action :find_event, only: [:show, :update, :destroy]

    def index
      render json: Event.all
    end
  
    def show
      render json: @event
    end
  
    def create
      render json: Event.create(event_params)
    end
  
    def update
      @event.update(event_params)
      if @event.save
        render json: @event, status: :accepted
      else
        render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    def destroy
      render json: @event.destroy
    end
  
    private
  
    def find_event
      @event = Event.find(params[:id])
    end
  
    def event_params
      params.permit(:name, :date, :img_url, :comment)
    end
  end
end
