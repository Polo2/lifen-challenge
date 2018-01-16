# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Worker.destroy_all


Worker.create(first_name: "Julie", status: "medic")
Worker.create(first_name: "Emilie", status: "medic")
Worker.create(first_name: "Antoine", status: "interne")
Worker.create(first_name: "Lea", status: "interim")

puts "#{Worker.all.count} créés"

Shift.create(start_date: Date.new(2018,1,27), worker_id: Worker.first.id )

puts "1 garde créée pour #{Worker.first.first_name} "
