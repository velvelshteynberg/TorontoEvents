class AdminReviewsMailer < ApplicationMailer
    default from: 'velvelshteynberg@gmail.com'

  def approval_email(user)
    @users = user
    @user = User.find_by(email: @users)
    mail(to: @users, subject: 'Event approval')
  end

  def deletion_email(user)
    @users = user
    @user = User.find_by(email: @users)
    mail(to: @users, subject: 'Event deletion')
  end

  def update_requiring_email(user)
    @users = user 
    @user = User.find_by(email: @users)
    @event = Event.find_by(user_id: @user.id)
    mail(to: @users, subject: 'Update required')
  end
end
