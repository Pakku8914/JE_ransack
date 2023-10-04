class Student < ApplicationRecord
  belongs_to :department
  has_many :student_subjects
  has_many :subjects, through: :student_subjects

  def self.ransackable_attributes(auth_object = nil)
    ["age", "department_id", "name", "sex"]
  end
end
