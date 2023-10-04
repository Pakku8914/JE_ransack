class CreateStudentSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :student_subjects do |t|
      t.references :student
      t.references :subject
      t.timestamps
    end
  end
end
