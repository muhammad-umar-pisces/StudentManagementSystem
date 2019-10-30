json.extract! student, :id, :student_name, :student_father_name, :student_roll_no, :fee, :created_at, :updated_at
json.url student_url(student, format: :json)
