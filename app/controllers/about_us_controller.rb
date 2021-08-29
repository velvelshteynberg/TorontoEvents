class AboutUsController < ApplicationController
    def home
    end 

    def about_us
    end 

    def contact_us
    end 

    def contact_us_form
        @random_guy = RandomGuy.new(contact_us_form_params)
        if @random_guy.save
            flash[:notice] = 'Message succesfully sent'
            redirect_to about_us_contact_url
        else
            flash[:notice] = "Please try again"
        end 

    end 

    private 
    def contact_us_form_params
        params.require(:random_guys).permit(:first_name, :last_name, :email, :message)
    end 
end
