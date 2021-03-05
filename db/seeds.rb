# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.delete_all
Instructor.delete_all
Subject.delete_all

file_subject = File.read('./JSON_FILES/subject.json')
data_subject =JSON.parse(file_subject)
(data_subject).each do |row|
    data_line = row 
    Subject.create(subject_id: row["id"], name: row["name"], abbr: row["abbreviation"])
end

file_course= File.read('./JSON_FILES/course.json')
data_course =JSON.parse(file_course)
(data_course).each do |row|
    data_line = row 
    Course.create(course_id:row["id"], code: row["code"], name: row["name"], description: row["description"], requirement: row["requirements"])
end

file_instructor= File.read('./JSON_FILES/instructor.json')
data_instructor =JSON.parse(file_instructor)
(data_instructor).each do |row|
    data_line = row 
    Instructor.create(instructor_id: row["id"], email: row["email"], first: row["first"], middle: row["middle"], last: row["last"])
end
