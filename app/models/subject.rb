class Subject < ApplicationRecord
    require 'json'
    
    def self.my_import()
        subjects = []
        columns = [:name, :subject_id]
        file_subject = File.read('./JSON_FILES/subject.json')
        data_subject =JSON.parse(file_subject)
        (data_subject).each do |row|
            subjects << {name: row["name"], subject_id: row["id"]}
        end
        Subject.import columns, subjects, validate:false
    end
end
