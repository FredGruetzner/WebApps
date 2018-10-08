class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :id_number
      t.references :course, foreign_key: true
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
