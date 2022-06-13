class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
      # flash.now[:notice] = "Logged in successfully"
      # flash.now[:alert] = "Invalid email or password"
      if session[:user_id]
        Current.user = User.find_by(id: session[:user_id])
      end
   end 
end
