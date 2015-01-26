# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(0..5).each do |i|
  Visit.create title: "Visit #{i}", name: "Colegio #{i}",turn: [true, false].sample, description: "Visit #{i} description", members: "#{rand(1 .. 60)}", date: "2014-12-#{rand(1 .. 30)}"
end

(0..5).each do |i|
  Reservation.create title: "Reservation #{i}", phone: "#{rand(600000000 .. 700000000)}", date: "2014-12-#{rand(1 .. 30)}", members: "#{rand(0 .. 60)}", email: "email#{i}@gmail.com"
end

(0..5).each do |i|
  Event.create title: "Event #{i}", description: "#{i} Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet velit ipsum. Integer tempor bibendum mauris nec facilisis. Aliquam auctor nibh ultrices, porttitor mauris ultrices, maximus tortor. Vestibulum suscipit diam a risus mollis, non sagittis nibh vestibulum. Suspendisse id metus efficitur, luctus metus eget, elementum purus. Aliquam ut nisi finibus, finibus eros viverra, mattis erat. Mauris sed laoreet augue. Suspendisse vel turpis lacinia, maximus massa vitae, posuere ipsum. Nulla vel tortor vel arcu convallis luctus. Pellentesque id turpis lacus. Mauris rhoncus sem at commodo consequat. Fusce fringilla vel nisl ut facilisis. Nulla vel imperdiet mauris, quis volutpat nisi. Duis commodo vel leo in tempus. Pellentesque sed purus laoreet, eleifend lectus nec, tincidunt magna.", date: "2014-12-#{rand(1 .. 30)}", members: "#{rand(0 .. 60)}", url: "http://www.google.es"
end

