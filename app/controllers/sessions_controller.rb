class SessionsController < ApplicationController
    def destroy
        session[:user_id] = nil
        redirect-to root_path, notice "Logged out"
    end
end