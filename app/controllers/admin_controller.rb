class AdminController < ApplicationController
    def events
        @events = Event.where(is_approved: false)
    end 

    def events_show
        @event = Event.find(params[:id])
    end 

    def hosts
        @hosts = HostOrganization.all
        @host = HostOrganization.new
    end 

    def hosts_show
        @host = HostOrganization.find(params[:id])
    end

    def caterers
        @caterers = Caterer.all
        @caterer = Caterer.new
    end 

    def caterers_show
        @caterer = Caterer.find(params[:id])
    end 


end
