class AdminReviewsController < ApplicationController

    

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

    def create
        @event = Event.find(params[:event_id])
        @event.is_approved = true 
        @event.does_require_update = false
        @user = User.find(@event.user_id)

        if @event.save
            AdminReviewsMailer.approval_email(@user.email).deliver_now
            flash[:notice] = 'Successfully approved'
        else
            flash[:notice] = 'Unable to approve'
        end 

    end 

    def update
        @event = Event.find(params[:event_id])
        @event.does_require_update = true
        @event.update_required_explanation = params[:event][:update_required_explanation]
        @explanation = params[:event][:update_required_explanation]
        @user = User.find(@event.user_id)
        if @event.save
            AdminReviewsMailer.update_requiring_email(@user.email).deliver_now
        else 
        end
    end 


end
