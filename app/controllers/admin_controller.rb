class AdminController < ApplicationController

    def events
        @events = Event.where(is_approved: false)
    end 

    def hosts
        @hosts = HostOrganization.all
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
