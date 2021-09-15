class AdminController < ApplicationController

    def events
        @events = Event.where(is_approved: false)
    end 

    def hosts
        @hosts = HostOrganization.all
    end 

    def caterers
        @caterers = Caterer.all
    end 
end
