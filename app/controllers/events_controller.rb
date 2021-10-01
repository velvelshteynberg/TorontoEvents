class EventsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :delete]

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
        @event.user = current_user
        if @event.save
            redirect_to events_url
        else
            render :new
        end
    end

    def edit
        @event = Event.find(params[:id])
    end

    def update
        @event = Event.find(params[:id])
        if @event.update_attributes(event_params)
            redirect_to "/events/#{@event.id}"
        else
            render :edit
        end
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to events_url
    end

    private
    def event_params
        params.require(:event).permit(:name, :start_date, :end_date, :start_time, :end_time, :address, :description, :host_organization_id, :caterer_id)
    end
end
