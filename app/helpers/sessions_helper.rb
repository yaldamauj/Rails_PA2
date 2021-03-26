module SessionsHelper
    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !current_user.nil?
    end
 
    # Confirms a logged-in user.
    def logged_in_user
       unless logged_in?
          flash[:danger] = "Please log in."
          redirect_to sign_in_path
       end
    end

    def log_in(user)
      session[:user_id] = user.id
    end

    def current_user
      if session[:user_id]
        @current_user ||= User.find_by(id: session[:user_id])
      end
   end
 end