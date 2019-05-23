# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
BOOTCAMPS = [
  "Flatiron School",
  "Fullstack Academy",
  "Thinkful",
  "Grace Hopper",
  "Hack Reactor",
  "Metis",
  "Byte Academy",
  "App Academy",
  "Startup Institute"
]

20.times {Student.find_or_create_by(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)}
20.times {Instructor.find_or_create_by(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, num_mods_taught: Faker::Number.between(1, 100), bootcamp_name: BOOTCAMPS.sample)}
20.times {Review.find_or_create_by(student_id: Faker::Number.between(1, Student.last.id), instructor_id: Faker::Number.between(1, Instructor.last.id), rating: Faker::Number.between(1, 5), comment: Faker::Quote.most_interesting_man_in_the_world )}
