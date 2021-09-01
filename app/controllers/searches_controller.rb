class SearchesController < ApplicationController

    def index
    end

    def create
        # create in scopes (4 scopes and then                     to validate if an augument has been passed)
        @eventname = Event.where("name LIKE ?", "% #{params[:events][:name]}  %" )
        @eventstartdate = Event.where("start_date LIKE ?", "% #{params[:events][:start_date]} %" )
        @eventaddress = Event.where("address LIKE ?", "% #{params[:events][:address]} %" )
        @host_organization = Event.where('host_organization_id LIKE ?', "% #{params[:host_organization][:name]} %" )
        #@caterer = Event.where('caterer LIKE ?', "% #{params[:caterers][:name]}%" )
        array = [@eventname, @eventstartdate, @eventaddress, @host_organization]
        @events = []

        array.each do |variable|
            if variable.empty? == false
                variable.each do |event|

                    unless @events.include?(event)
                        @events.push(event)
                    end

            end 
            end 
        end 


    end 

end
