module SessionHelper
    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !@user.nil?
    end
 
    # Confirms a logged-in user.
    def logged_in_user
       unless logged_in?
          flash[:danger] = "Please log in."
          redirect_to sign_in_path
       end
    end
 
 end