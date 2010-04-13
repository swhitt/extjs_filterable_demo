# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
2000.times do
  Person.create({:name => Faker::Name.name, :address => Faker::Address.street_address, :email => Faker::Internet.email, :phone => Faker::PhoneNumber.phone_number})
end
