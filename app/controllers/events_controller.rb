class EventsController < ApplicationController
    def index
        @events = Event.search(name: params[:name], address: params[:address], start_date: params[:start_date], host_organization: params[:host_organization])
    end 

    def new
    end 

    def show
    end 
end
