class PagesController < ApplicationController
    def search
        if params[:subject].blank?
            @courses = Course.where("name ILIKE ?", "%#{params[:search_text]}%")
          else
          end
    end

    def show
        
    end
end


