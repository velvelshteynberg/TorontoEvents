class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :phone, :is_subscribed, :admin])
  #  devise_parameter_sanitizer.for(:account_update) { |u|    u.permit(:username, :phone, :is_subscribed, :admin) }
 end

  def after_sign_in_path_for(resource)
    if resource.admin 
      admin_events_path
    else
      root_path
    end 
  end

  def after_sign_up_path_for(resource)
      root_path
  end

end
