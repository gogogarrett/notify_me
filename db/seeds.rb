# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

program = Program.create(name: "blake", bio: "awesome")

10.times do |i|
  program.contacts.create(first_name: "Garrett-#{i+1}",
                          last_name: "Heinlen-#{i+1}",
                          email: "h@h.com",
                          phone: '111-111-1111')
end
