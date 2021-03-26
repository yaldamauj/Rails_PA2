class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            reset_session
            log_in user
            redirect_to root_path

        else
            flash.now[:danger] = 'Invalid email/password combination'
            render 'new'
        end 
    end

    def destroy     
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out successfully"
    end
end