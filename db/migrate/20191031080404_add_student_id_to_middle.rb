class AddStudentIdToMiddle < ActiveRecord::Migration[5.2]
  def change
    add_column :middles, :student_id, :integer
  end
end
