# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Grade.destroy_all
Student.destroy_all
Professor.destroy_all
Lesson.destroy_all


h1 = House.create(name: "Hufflepuff")
h2 = House.create(name: "Ravenclaw")
h3 = House.create(name: "Slytherin")
h4 = House.create(name: "Gryffindor")

s1 = Student.create(name: "Harry Potter", house_id: h4.id)
s2 = Student.create(name: "Cedric Diggory", house_id: h1.id)
s3 = Student.create(name: "Luna Lovegood", house_id: h2.id)
s4 = Student.create(name: "Draco Malfoy", house_id: h3.id)

g1 = Grade.create(grade_achievement: "A")
g2 = Grade.create(grade_achievement: "B")
g3 = Grade.create(grade_achievement: "C")
g4 = Grade.create(grade_achievement: "D")
g5 = Grade.create(grade_achievement: "F")


p1 = Professor.create(name: "Minerva McGonagall" , subject: "Transfiguration")
p2 = Professor.create(name: "Filius Flitwick", subject: "Charms")
p3 = Professor.create(name: "Severus Snape" , subject: "Potions")
p4 = Professor.create(name: "Cuthbert Binns" , subject: "History of Magic")
p5 = Professor.create(name: "Remus Lupin" , subject: "Defence Against the Dark Arts")
p6 = Professor.create(name: "Aurora Sinistra" , subject: "Astronomy & Herbology")
p7 = Professor.create(name: "Rolanda Hooch" , subject: "Flying Lessons")

l1 = Lesson.create(lesson_name: "Potions" , location: "whatever" , time: "3pm" , student_id: s1.id, professor_id: p3.id) 
l1 = Lesson.create(lesson_name: "Transfiguration" , location: "whatever" , time: "4pm" , student_id: s2.id, professor_id: p1.id) 
l1 = Lesson.create(lesson_name: "History of Magic" , location: "whatever" , time: "9am" , student_id: s4.id, professor_id: p4.id) 
l1 = Lesson.create(lesson_name: "Charms" , location: "whatever" , time: "11am" , student_id: s3.id, professor_id: p2.id) 


