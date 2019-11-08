class AddStudentIdToMetric < ActiveRecord::Migration[5.2]
  def change
    add_column :metrics, :student_id, :integer
  end
end
