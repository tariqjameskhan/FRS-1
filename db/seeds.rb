require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# puts "deleting old companies"
# Company.destroy_all
# puts "making new ones!"

# company = Company.new(
#   name: "McDonalds",
#   address: Faker::Address.full_address,
#   telephone_number: '07772235001',
#   email_address: Faker::Internet.email
# )
# company.inspector_id = User.find(1).id
# company.client_id = User.find(2).id

# company.save!
# puts "comp saved!"

# company = Company.new(
#   name: "Burger King",
#   address: Faker::Address.full_address,
#   telephone_number: '07772235002',
#   email_address: Faker::Internet.email
# )
# company.inspector_id = User.find(1).id
# company.client_id = User.find(2).id
# company.save!
# puts "comp saved!"

# company = Company.new(
#   name: "Wendys",
#   address: Faker::Address.full_address,
#   telephone_number: '07772235003',
#   email_address: Faker::Internet.email
# )
# company.inspector_id = User.find(1).id
# company.client_id = User.find(2).id
# company.save!
# puts "comp saved!"

# company = Company.new(
#   name: "KFC",
#   address: Faker::Address.full_address,
#   telephone_number: '07777235004',
#   email_address: Faker::Internet.email
# )
# company.inspector_id = User.find(1).id
# company.client_id = User.find(2).id
# company.save!
# puts "comp saved!"

# company = Company.new(
#   name: "Pizza Hut",
#   address: Faker::Address.full_address,
#   telephone_number: '07772235005',
#   email_address: Faker::Internet.email
# )
# company.inspector_id = User.find(1).id
# company.client_id = User.find(2).id
# company.save!
# puts "comp saved!"

# company = Company.new(
#   name: "Popeyes",
#   address: Faker::Address.full_address,
#   telephone_number: '07772235006',
#   email_address: Faker::Internet.email
# )
# company.inspector_id = User.find(1).id
# company.client_id = User.find(2).id
# company.save!
# puts "comp saved!"

# company = Company.new(
#   name: "Nandos",
#   address: Faker::Address.full_address,
#   telephone_number: '07772235007',
#   email_address: Faker::Internet.email
# )
# company.inspector_id = User.find(1).id
# company.client_id = User.find(2).id
# company.save!
# puts "comp saved!"

# company = Company.new(
#   name: "Subway",
#   address: Faker::Address.full_address,
#   telephone_number: '07772235022',
#   email_address: Faker::Internet.email
# )
# company.inspector_id = User.find(1).id
# company.client_id = User.find(2).id
# company.save!
# puts "comp saved!"

# company = Company.new(
#   name: "Wagamama",
#   address: Faker::Address.full_address,
#   telephone_number: '07772235021',
#   email_address: Faker::Internet.email
# )
# company.inspector_id = User.find(1).id
# company.client_id = User.find(2).id
# company.save!
# puts "comp saved!"

# puts "finished!"

# ########################### question seeds #######################
# puts "deleting old questions"
# Question.destroy_all
# puts "making new ones!"
# puts "creating questions"
# question = Question.new(question_name: "Is the fire alarm suitable and sufficient for the premises and risk type?")
# question.save!
# num = 0
# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Is the fire alarm connected to an alarm recieving centre?")
# question.save!

# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Is the fire alarm being maintained in accordance with BS 5839 part 1?")
# question.save!

# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Have staff recieved fire awareness training?")
# question.save!

# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Have specific staff been given Fire Warden or Marshall training along with an appropriate level of responsibility?")
# question.save!

# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Have staff received any practical fire extinguisher training?")
# question.save!

# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Is there an evacuation plan present?")
# question.save!

# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Are fire drills called out periodically")
# question.save!

# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Are portable fire extinguishers available?")
# question.save!

# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Have fire extinguishers been serviced regularly by a competent person in accordance with BS 5306?")
# question.save!

# puts "question number #{num += 1} has been created"
# question = Question.new(question_name: "Are fire extinguishers provided suitable for the risks in the premises")
# question.save!
############################# report-question seeds #################
@reports = Report.all
@reports.each do |report|
  # for every report
  @questions = Question.all
  # for every question
  @questions.each do |question|
    @report_question = ReportQuestion.new
    # new instance of report_question
    @report_question.question = question
    # assign a question
    @report_question.report = report
    # assigned to the report
    @report_question.save!
  end
end
