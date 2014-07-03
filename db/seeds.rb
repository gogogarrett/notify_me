# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

program = Program.create(name: "blake", bio: "awesome")

group = program.groups.create(name: "Group 1")
group.contacts.create!(
  first_name: "Garrett",
  last_name: "Heinlen",
  email: "heinleng@gmail.com",
  phone: '555-555-5555',
  program: program
)

group.contacts.create!(
  first_name: "Jenny",
  last_name: "Lee",
  email: "jlee@gmail.com",
  phone: '444-444-4444',
  program: program
)

