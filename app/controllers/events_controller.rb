class EventsController < ApplicationController
    def index
    @events = Event.search('bluffing')
    end 

    def new
    end 

    def show
    end 
end
