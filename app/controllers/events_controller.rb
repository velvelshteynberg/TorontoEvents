class EventsController < ApplicationController
    def index
        # [host_organization: params[:host_organization]
        @events = Event.filtered(query_params)
    end 

   

    def new
    end 

    def show
    end 

    private
    def query_params
    query_params = params[:query]
    query_params ? query_params.permit(:name, :address, :start_date) : {}
    end

end
