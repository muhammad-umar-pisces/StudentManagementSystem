class CreateMiddles < ActiveRecord::Migration[5.2]
  def change
    create_table :middles do |t|
      t.integer :Islamiat
      t.integer :Pak_studies
      t.integer :Math
      t.integer :Science
      t.integer :Arabic
      t.integer :Urdu
      t.integer :English

      t.timestamps
    end
  end
end
