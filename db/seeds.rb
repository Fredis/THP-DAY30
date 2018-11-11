# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'date'

array_airport_code = ["CDG", "ORY", "FSC", "STR", "ATH", "BEG", "VLC", "NCL", "VKO", "OTP"]

array_airport_code.each do |element|
	Airport.create!(airport_code: element)
end



10.times do |element|
	Flight.create!(duration: Faker::Number.between(30,6000), departure_date: DateTime.new(2018,11,Faker::Number.between(11,17)), departure_airport_id: Faker::Number.between(1,10), arrival_airport_id: Faker::Number.between(1,10))
end