class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.text :number
      t.text :family_name
      t.text :first_name      
      t.timestamps
    end
  end
end
