class AddStudentClassToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :student_class, :integer
  end
end
