class AdminReviewsMailer < ApplicationMailer
    default from: 'velvelshteynberg@gmail.com'

  def approval_email(client)
    @user = client
    mail(to: @user, subject: 'Event approval')
  end

  def deletion_email(client)
    @user = client
    mail(to: @user, subject: 'Event deletion')
  end

  def update_requiring_email(user)
    @users = user 
    @user = User.find_by(email: @users)
    mail(to: @users, subject: 'Update required')
  end
end
