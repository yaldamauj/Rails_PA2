class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] =  user.id
            redirect_to root_path, notice: "Logged in successfully"
        else 
            flash[:error] = 'Invalid email/password combination'
            render :new
        end
    end

    def destroy     
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out successfully"
    end
end