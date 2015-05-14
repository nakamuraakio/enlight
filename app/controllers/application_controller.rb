class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  def after_sign_in_path_for(resource)
    if current_user
      if current_user.profile.nil?
        new_profile_path
      else
        profile_path(current_user.id)
      end
    else
      if current_firmuser.firm.nil?
        new_firm_path
      else
        users_path
      end
    end
  end

  def after_sign_out_path_for(resource)
  	root_url
  end
end
