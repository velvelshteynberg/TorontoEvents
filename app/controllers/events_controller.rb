class EventsController < ApplicationController
    def index
        @events = Event.all
    end 

    def new
        @event = Event.new
    end 

    def create
        @event = Event.new(event_params)
        @event.host_organization_id = HostOrganization.find(1)
        
        if @event.save
            p 'amaaing'
        else
            p 'that sucks'
        end 
    end 

    def show
    end 

    private 

    def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :start_time, :end_time, :address, :description )
    end 
end
