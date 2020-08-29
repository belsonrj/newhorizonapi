class EventsController < ApplicationController
    
    def index
        trainers = Event.all
        render json: events
    end
end
