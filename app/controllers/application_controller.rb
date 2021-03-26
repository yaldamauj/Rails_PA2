class ApplicationController < ActionController::Base
   include SessionsHelper

   before_action :set_current_user
    
    def set_current_user
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
    end
end
