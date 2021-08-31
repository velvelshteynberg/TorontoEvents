class SearchesController < ApplicationController

    def index
    end

    def create
        @eventname = Event.where("name LIKE ?", params[:events][:name]).where("start_date LIKE ?", params[:events][:start_date]).where("address LIKE ?", params[:events][:address])
        @eventstartdate = Event.where("start_date LIKE ?", params[:events][:start_date])
        @eventaddress = Event.where("address LIKE ?", params[:events][:address])
        @host_organization = Event.where('host_organization_id LIKE ?', params[:host_organization][:name])
        @caterer = Event.where('caterer LIKE ?', params[:caterers][:name])
    end 

end
