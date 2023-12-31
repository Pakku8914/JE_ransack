# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.create(name: "経済学部")
Department.create(name: "外国語学部")
Department.create(name: "社会学部")
Department.create(name: "理工学部")

Subject.create(name: "数学")
Subject.create(name: "社会学")
Subject.create(name: "外国語")

Student.create(name: "鈴木よし子", sex: false, age: 18, department_id: 1)
Student.create(name: "伊藤佳穂", sex: false, age: 19, department_id: 2)
Student.create(name: "鈴木佳孝", sex: true, age: 20, department_id: 3)
Student.create(name: "山田太郎", sex: true, age: 22, department_id: 4)

StudentSubject.create(student_id: 1, subject_id: 1)
StudentSubject.create(student_id: 1, subject_id: 2)
StudentSubject.create(student_id: 2, subject_id: 3)
StudentSubject.create(student_id: 3, subject_id: 2)
StudentSubject.create(student_id: 4, subject_id: 1)
StudentSubject.create(student_id: 4, subject_id: 3)
