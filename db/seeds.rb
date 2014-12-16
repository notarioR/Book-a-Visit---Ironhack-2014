# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(0..15).each do |i|
  Visit.create title: "Visit #{i}", description: "Loop num #{i} description", date: "2014-12-#{rand(1 .. 30)}"
end

(0..15).each do |i|
  Reservation.create title: "Reservation #{i}", phone: "#{rand(600000000 .. 700000000)}", date: "2014-12-#{rand(1 .. 30)}", members: "#{rand(0 .. 60)}", email: "email#{i}@gmail.com"
end

