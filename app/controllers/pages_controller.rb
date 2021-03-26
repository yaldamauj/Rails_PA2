class PagesController < ApplicationController
    def search
        if params[:subject].blank?
            @courses = Course.where("name ILIKE ?", "%#{params[:search_text]}%")
          else
            @courses = Subject.find(params[:subject]).courses.where("name ILIKE ?",
                                    "%#{params[:search_text]}%")
          end
    end

    def show
        
    end
end


