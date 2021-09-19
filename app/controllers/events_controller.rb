class EventsController < ApplicationController
    def index
        @events = Event.all
    end


    def show
        @event = Event.find(params[:id])
    end
    
    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to events_url
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    def event_params
        params.require(:event).permit(:name, :start_date, :end_date, :start_time, :end_time, :address, :description)
    end
end
