class SubscribersController < ApplicationController
    def create
        @subscriber = Subscriber.new(subscriber_params)
        if @subscriber.save
            flash[:notice] = 'Succesfully Subscribed'
        else
            flash[:notice] = 'Unable to process your subscription at the moment'
        end 
    end 

    private 

    def subscriber_params
        params.require(:subscriber).permit(:email)
    end 
end
