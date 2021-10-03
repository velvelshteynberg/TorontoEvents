class HostOrganizationsController < ApplicationController

    def create
       @host =  HostOrganization.create(host_params)

        if @host.save
            redirect_to admin_hosts_url
            flash.alert = 'Successfully submitted'
        else 
            flash.alert = 'Unable to process submission. Please resubmit the form'
        end 

    end 

    private
    def host_params
        params.require(:host_organization).permit(:name, :website, :email, :mailing_address, :phone_number, :description)
    end 

end
