class CreateMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :metrics do |t|
      t.integer :Math
      t.integer :Physics
      t.integer :Chemistry
      t.integer :Biology
      t.integer :Computer

      t.timestamps
    end
  end
end
