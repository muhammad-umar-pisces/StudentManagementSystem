class AddMonthToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :Month, :string
  end
end
