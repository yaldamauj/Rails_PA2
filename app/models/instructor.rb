class Instructor < ApplicationRecord
    require 'json'

    def self.my_import()
        instructors = []
        columns = [:first, :middle, :last, :instructor_id, :email]
        file_instructor= File.read('./JSON_FILES/instructor.json')
        data_instructor =JSON.parse(file_instructor)
        (data_instructor).each do |row|
            instructors << {instructor_id: row["id"], email: row["email"], first: row["first"], middle: row["middle"], last: row["last"]}
        end
        Instructor.import columns, instructors, validate:false 

    end
end
