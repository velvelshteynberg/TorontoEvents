class CaterersController < ApplicationController

    def create
        @caterer = Caterer.create(caterer_params)

        if @caterer.save
            redirect_to admin_caterers_path
            flash.alert = "Caterer succesfully create"
        else
            flash.alert = "Unable to process submission at this time"
        end 

    end 

    private
    def caterer_params
        params.require(:caterer).permit(:name, :website, :email, :mailing_address, :phone_number, :description)
    end 
end
