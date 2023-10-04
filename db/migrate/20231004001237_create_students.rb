class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      # trueの場合，男
      t.boolean :sex
      t.references :department
      t.timestamps
    end
  end
end
