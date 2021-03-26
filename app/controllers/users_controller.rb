class UsersController < ApplicationController
    before_action :logged_in_user

    def show
        @user = User.find(params[:id])
    end

    def new 
        @user =User.new(user_param)
        if @user.save
            session[:user_id] = @user.id
            redirect_to sign_in_path
        else 
            render :new_course_path
        end
    end

    def index

    end
end