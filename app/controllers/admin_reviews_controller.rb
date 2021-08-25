class AdminReviewsController < ApplicationController

    def create
        @event = Event.find(params[:event_id])
        @event.is_approved = true 
        @user = User.find(@event.user_id)

        if @event.save
            AdminReviewsMailer.approval_email(@user.email).deliver_now
            flash[:notice] = 'Successfully approved'
        else
            flash[:notice] = 'Unable to approve'
        end 

    end 

    def destroy
        @event = Event.find(params[:event_id])
        @event.delete
        @user = User.find(@event.user_id)

        if @event.delete
            AdminReviewsMailer.deletion_email(@user.email).deliver_now
            flash[:notice] = 'Successfully deleted'
        else
            flash[:notice] = 'Unable to delete'
        end 
            
    end 

    def update
    end 


end
