class EventsController < ApplicationController
    def index
        # [host_organization: params[:host_organization]
        @events = Event.search(name: params[:name], address: params[:address], start_date: params[:start_date])
    end 

    def new
    end 

    def show
    end 
end
