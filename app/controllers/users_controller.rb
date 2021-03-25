class UsersController < ApplicationController
    before_action :logged_in_user

    def show
        @user = User.find(params[:id])
    ​end

    ​def new
        @user = User.new(user_params) 
        if @user.save 
            session[:user_id] = @user.id 
            redirect_to root_path 
        else 
            render :new
        end 
    end

    def index
    end
end
