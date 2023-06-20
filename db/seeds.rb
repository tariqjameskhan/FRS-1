require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "deleting old companies"
Company.destroy_all
puts "making new ones!"

company = Company.new(
  name: "McDonalds",
  address: Faker::Address.full_address,
  telephone_number: 07772235001,
  email_address: Faker::Internet.email
)
company.user_id = User.find(1).id
company.inspector_id = User.find(1).id
company.client_id = User.find(2).id

company.save!
puts "comp saved!"

company = Company.new(
  name: "Burger King",
  address: Faker::Address.full_address,
  telephone_number: 07772235002,
  email_address: Faker::Internet.email
)
company.user_id = User.find(1).id
company.inspector_id = User.find(1).id
company.client_id = User.find(2).id
company.save!
puts "comp saved!"

company = Company.new(
  name: "Wendys",
  address: Faker::Address.full_address,
  telephone_number: 07772235003,
  email_address: Faker::Internet.email
)
company.user_id = User.find(1).id
company.inspector_id = User.find(1).id
company.client_id = User.find(2).id
company.save!
puts "comp saved!"

company = Company.new(
  name: "KFC",
  address: Faker::Address.full_address,
  telephone_number: 07777235004,
  email_address: Faker::Internet.email
)
company.user_id = User.find(1).id
company.inspector_id = User.find(1).id
company.client_id = User.find(2).id
company.save!
puts "comp saved!"

company = Company.new(
  name: "Pizza Hut",
  address: Faker::Address.full_address,
  telephone_number: 07772235005,
  email_address: Faker::Internet.email
)
company.user_id = User.find(1).id
company.inspector_id = User.find(1).id
company.client_id = User.find(2).id
company.save!
puts "comp saved!"

company = Company.new(
  name: "Popeyes",
  address: Faker::Address.full_address,
  telephone_number: 07772235006,
  email_address: Faker::Internet.email
)
company.user_id = User.find(1).id
company.inspector_id = User.find(1).id
company.client_id = User.find(2).id
company.save!
puts "comp saved!"

company = Company.new(
  name: "Nandos",
  address: Faker::Address.full_address,
  telephone_number: 07772235007,
  email_address: Faker::Internet.email
)
company.user_id = User.find(1).id
company.inspector_id = User.find(1).id
company.client_id = User.find(2).id
company.save!
puts "comp saved!"

company = Company.new(
  name: "Subway",
  address: Faker::Address.full_address,
  telephone_number: 07772235022,
  email_address: Faker::Internet.email
)
company.user_id = User.find(1).id
company.inspector_id = User.find(1).id
company.client_id = User.find(2).id
company.save!
puts "comp saved!"

company = Company.new(
  name: "Wagamama",
  address: Faker::Address.full_address,
  telephone_number: 07772235021,
  email_address: Faker::Internet.email
)
company.user_id = User.find(1).id
company.inspector_id = User.find(1).id
company.client_id = User.find(2).id
company.save!
puts "comp saved!"

puts "finished!"
