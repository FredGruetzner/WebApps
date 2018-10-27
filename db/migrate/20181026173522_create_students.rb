class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :student
      t.integer :id_number

      t.timestamps
    end
  end
end
