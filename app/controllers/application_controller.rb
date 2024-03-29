class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    case resource
    when User
      if current_user.gacha_count == 0
        point_gachas_new_path
      else
        users_index_path
      end
    when Admin
      admins_index_path
    end
  end
  
end
