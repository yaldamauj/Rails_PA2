class ApplicationController < ActionController::Base
    def hello
        render html: "WELCOME TO YALDA'S RAILS PA"
    end
end
