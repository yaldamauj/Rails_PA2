class Course < ApplicationRecord
    has_many :enrollments
    has_many :users, through: :enrollments
    require 'json'

    def self.my_import()
        courses = []
        columns = [:name, :course_id, :code, :description, :subjects]
        file_course= File.read('./JSON_FILES/course.json')
        data_course =JSON.parse(file_course)
        (data_course).each do |row|
            courses << {course_id: row["id"], code: row["code"], name: row["name"], descriptions: row["description"], subjects: row["subjects"]}
        end
        Course.import columns, courses, validate:false
    end
end
