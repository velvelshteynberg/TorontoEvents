class AdminController < ApplicationController

    #there has to be a before_action written for these 5 methods
    def events
        @events = Event.where(is_approved: false)
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
    end 

    def caterers_show
        @caterer = Caterer.find(params[:id])
    end 


end
