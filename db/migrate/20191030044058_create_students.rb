class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :student_father_name
      t.integer :fee

      t.timestamps
    end
  end
end
