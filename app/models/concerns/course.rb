class Course < ActiveRecord::Base
    def self.search(search)
        if search
            where(["name LIKE ?","%#{serach}%"]) 
        else
        end
    end
end