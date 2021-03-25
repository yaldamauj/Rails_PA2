class PagesController < ApplicationController
    def search
        if params[:subject].blank?
            @courses = Course.where("name LIKE ?", "%#{params[:search_text]}%")
          else
            @courses = Subject.find(params[:subject]).courses.where("name LIKE ?",
                                    "%#{params[:search_text]}%")
          end
    end

    def show
        
    end
end


