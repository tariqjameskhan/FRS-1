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
# Fixed installations
num = 11
question = Question.new(question_name: "Are there fixed installations in the premises?")
question.save!
puts "question number #{num += 1} has been created"

question = Question.new(question_name: "Are the fixed installations serviced in accordance with current guidance?")
question.save!
puts "question number #{num += 1} has been created"
# Means of Escape
question = Question.new(question_name: "Are the means of escape considered acceptable?")
question.save!
puts "question number #{num += 1} has been created"

question = Question.new(question_name: "Are the number of exits adequate for the property size and occupancy?")
question.save!
puts "question number #{num += 1} has been created"

question = Question.new(question_name: "Are the exits easily openable without use of key or keycode?")
question.save!
puts "question number #{num += 1} has been created"

question = Question.new(question_name: "Are the exits wide enough for the occupancy and number or persons using them?")
question.save!
puts "question number #{num += 1} has been created"

question = Question.new(question_name: "Are the exits route free from obstructions and tenable?")
question.save!
puts "question number #{num += 1} has been created"

question = Question.new(question_name: "Are the travel distances for escape for any one point within current guidance for occupancy and risk type in the premises?")
question.save!
puts "question number #{num += 1} has been created"
# Compartmentation
question = Question.new(question_name: "Are the means of escape protected in fire resistant material?")
question.save!
puts "question number #{num += 1} has been created"

question = Question.new(question_name: "Are the escape stairways and changes of level protected?")
question.save!
puts "question number #{num += 1} has been created"

question = Question.new(question_name: "Are all voids fire stopped appropriately")
question.save!

puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are all holes in riser cupboards and breaches in compartmentation filled with fire resisting material to the appropriate standard?")
question.save!

puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are there any breaches in compartmentation that could lead to unseen fire spread?")
question.save!

puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are inner rooms present?")
question.save!

puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are adequate measures in place to protect occupants working in inner rooms?")
question.save!
puts "question number #{num += 1} has been created"
# Evacuation
question = Question.new(question_name: "Is there an evacuation plan present?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is there an appropriate method for accounting for all occupants following evacuation?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is there the need for phased evacuation due to occupancy numbers or building layout?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are there suitable refuge points available if necessary?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is there a suitable fire assembly point in place?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are there PEEPS in place?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are there adequate means to evacuate persons who identify as disabled or occupants with limited mobility?")
question.save!
puts "question number #{num += 1} has been created"
# Gas
question = Question.new(question_name: "Is there a gas isolation valve present?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is there a procedure in place should gas become involved in fire?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are portable gas cylinders used on the premises?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are portable gas cylinders stored appropriately?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is Acetylene used on the premises?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are heating installations serviced in accordance wit current guidance by a competent engineer?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are any portable heaters used on the premises considered appropriate and safe for use?")
question.save!
puts "question number #{num += 1} has been created"
# Electrical
question = Question.new(question_name: "Have the 5 yearly wiring tests been carried out by a competent engineer?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Has all Portable Appliance Testing (PAT) been carried out by a competent person?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is there any evidence of overloading sockets or hazardous practices involving power supplies?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are electrical items and sources of ignition stored safely away from combustibles?")
question.save!
puts "question number #{num += 1} has been created"
# Fire doors
question = Question.new(question_name: "Do all fire doors meet the minimum standard of fire resistance for the premises?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are the cold smoke seals and/or intumescent strips present and in good condition?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are the self closers fully functional?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are fire doors kept in the closed position or provided with a suitable system to allow them to close during activation of fire alarm?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are the appropriate fire doors to riser cupboards and other risks kept locked shut?")
question.save!
puts "question number #{num += 1} has been created"
# Signage
question = Question.new(question_name: "Are emergency exits adequately signposted?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are fire action notices provided?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are all relevant fire protection measures signposted where necessary?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is the fire assembly point signposted?")
question.save!
puts "question number #{num += 1} has been created"
# Special Risks
question = Question.new(question_name: "DSEAR?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "COSHH?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Lightning Protection?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Any other special risks?")
question.save!
puts "question number #{num += 1} has been created"
# Emergency lighting
question = Question.new(question_name: "Is there emergency lighting provided at all emergency exits?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is there emergency lighting provided in all windowless rooms and bathrooms?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is all emergency lighting provided along escape routes and areas leading to final place of safety?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Has emergency lighting been provided in all other areas where necessary?")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is emergency lighting functional and been tested and maintained appropriately in line with current guidance?")
question.save!
puts "question number #{num += 1} has been created"
# firefighting considerations
question = Question.new(question_name: "Are fire hydrants and or water supplies available for the fire service")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Are information cards or risk information made available to the fire service")
question.save!
puts "question number #{num += 1} has been created"
question = Question.new(question_name: "Is there someone to allocated to meet FRS upon arrival at an incident ")
question.save!
puts "question number #{num += 1} has been created"
# ############################# report-question seeds #################
# @reports = Report.all

# @reports.each do |report|
#   # for every report
#   puts "created report"
#   @questions = Question.all
#   # for every question
#   @questions.each do |question|
#     @report_question = ReportQuestion.new
#     # new instance of report_question
#     @report_question.question = question
#     # assign a question
#     @report_question.report = report
#     # assigned to the report
#     @report_question.save!
#     puts "added question to report"
#   end
# end
##################################### fault seeds ######################################
# num = 0
# puts "popluating faults and recommendations"
############################# Question 1 ############################
# puts "working on question number 1"
# fault = Fault.new(fault_detail: "The fire alarm system is not operational", recommendation: "The fire alarm system must be reinstated as soon as possible and recommisioned by a competant engineer")
# question = Question.find(1)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "The fire alarm system has not been adequately maintained", recommendation: "The fire alarm system must be mantained as per current guidance and serviced by a competant engineer every six months with full records kept")
# question = Question.find(1)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "The fire alarm system does not provide adequate protection for the life……etc risk", recommendation: "The fire alarm system must be upgraded to a more suitable system that will provide adequate protection for the residents and/or staff members")
# question = Question.find(1)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "There is no fire alarm system", recommendation: "An alarm sytem should be installed as a matter of urgency by a comptant engineer in accordance with BS 5839")
# question = Question.find(1)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 2 #################################
# num = 0
# puts "working on question number 2"
# fault = Fault.new(fault_detail: "The fire alarm has not been connected to the receiving centre", recommendation: "Have the alarm connected to the recieving centre as soon as practical")
# question = Question.find(2)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "The Alarm was connected but now subscription has expired", recommendation: "Re-instate subscription as soon as practical")
# question = Question.find(2)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 3 #################################
# num = 0
# puts "working on question number 3"
# fault = Fault.new(fault_detail: "Weekly checks are not being carried out", recommendation: "Weekly checks must be carried out by the user and recorded in a log book for reference with any defects being reported to the fire alarm maintenance company")
# question = Question.find(3)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Log book is not being kept up-to-date with records", recommendation: "All fire alarm checks must be recorded for reference and six monthly check certificates kept and logged")
# question = Question.find(3)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Six monthly checks are not being carried out", recommendation: "Six monthly testing mustbbe carried out by a compentant engineer")
# question = Question.find(3)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Faults are showing on the fire alarm system", recommendation: "The fire alarm system must be kept fully operational and where faults are showing repairs should be booked with a compentant engineer")
# question = Question.find(3)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 4 #################################
# num = 0
# puts "working on question number 4"
# fault = Fault.new(fault_detail: "Staff have not received any training", recommendation: "Fire training must be carried out by a competent person. Subjects included are covered in the FRS-1 Fire training guide syllabus ")
# question = Question.find(4)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Staff have received training but it is currently out of date ", recommendation: "Refresher fire training must be offered and provided by a competent person")
# question = Question.find(4)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Staff have received training but are unable to answer relevant questions", recommendation: "Refresher fire training must be offered and provided by a competent person")
# question = Question.find(4)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Staff are unsure if and when of any training ", recommendation: "Fire training must be carried out by a competent person. Subjects included are covered in the FRS-1 Fire training guide syllabus ")
# question = Question.find(4)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Only some staff members are appropriately trained ", recommendation: "Fire training must be offered to ALL staff and carried out by a competent person. Subjects included are covered in the FRS-1 Fire training guide syllabus ")
# question = Question.find(4)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 5 #################################
# num = 0
# puts "working on question number 5"
# fault = Fault.new(fault_detail: "No staff have received any Fire warden or Marshall training ", recommendation: "Additional fire warden or Marshall training should e provided by a competant person and items of responsibility allocated to these persons ")
# question = Question.find(5)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Staff have received training but it is currently out of date ", recommendation: "Refresher fire warden training should be provided by a competent person ")
# question = Question.find(5)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Staff have received training but are unable to answer relevant questions ", recommendation: "Refresher fire warden training should be provided by a competent person ")
# question = Question.find(5)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Staff have received training but have not been allocated any relevant responsibility ", recommendation: "Appropriate responsibilities should be allocated to trained members of staff. These could include fire drills, weekly checks, booking service and training etc. see FRS 1 fire training guide for more info.")
# question = Question.find(5)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 6 #################################
# num = 0
# puts "working on question number 6"
# fault = Fault.new(fault_detail: "Staff have not received any training", recommendation: "Fire training must be carried out by a competent person. Subjects included are covered in the FRS-1 Fire training guide syllabus ")
# question = Question.find(6)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Staff have received training but it is currently out of date ", recommendation: "Refresher fire training must be offered and provided by a competent person ")
# question = Question.find(6)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Staff have received training but are unable to answer relevant questions ", recommendation: "Refresher fire training must be offered and provided by a competent person ")
# question = Question.find(6)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Staff are unsure if and when of any training ", recommendation: "Fire training must be carried out by a competent person. Subjects included are covered in the FRS-1 Fire training guide syllabus ")
# question = Question.find(6)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Only some staff members are appropriately trained ", recommendation: "Fire training must be offered to ALL staff and carried out by a competent person. Subjects included are covered in the FRS-1 Fire training guide syllabus ")
# question = Question.find(6)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 7 #################################
# num = 0
# puts "working on question number 7"
# fault = Fault.new(fault_detail: "There is no current evacuation plan ", recommendation: "An evacuation plan must be provided and relayed to all staff during induction and training. It should also be documented and filed available for refresher when needed.")
# question = Question.find(7)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "This in an evacuation plan but it is not documented", recommendation: "The evacuation plan must be documented and madd available for refresher training when needed.")
# question = Question.find(7)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Evacuation Plan available but not deemed sufficient ", recommendation: "The evacuation plan should be re-written or amended by a competent person.")
# question = Question.find(7)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Evacuation plan available but staff are not informed or appropriately trained to follow guidance ", recommendation: "Staff must be trained in use of evacuation plan and informed of procedure during induction ")
# question = Question.find(7)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 8 #################################
# num = 0
# puts "working on question number 8"
# fault = Fault.new(fault_detail: "Fire drills are currently not carried out", recommendation: "Fire Drills should be carried out periodically ideally every 3-6 months ")
# question = Question.find(8)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "The most recent fire drill was significantly out of date ", recommendation: "Fire Drills should be carried out periodically ideally every 3-6 months ")
# question = Question.find(8)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Fire drills have been carried out but there are no records ", recommendation: "Fire Drills must be recorded and available for inspection.")
# question = Question.find(8)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 9 #################################
# num = 0
# puts "working on question number 9"
# fault = Fault.new(fault_detail: "There are no fire extinguishers available ", recommendation: "Fire extinguishers must be provided and installed by a competent engineer in full accordance with BS 5306")
# question = Question.find(9)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Fire extinguishers are available but are damaged or unusable ", recommendation: "Fire Extinguishers must be tested annually by a competent engineer as well as inspected weekly by the responsible person/fire warden to ensure they are not damaged etc. any indication that they cannot be used must be reported to the fire ex company.")
# question = Question.find(9)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Fire extinguishers are available but have not been tested annually by a competent engineer", recommendation: "Fire extinguishers must be tested annually by a competent engineer in accordance with BS 5306 ")
# question = Question.find(9)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Fire extinguishers are available but poorly sited ", recommendation: "Fire extinguishers should be sited in accordance with BS5306 by a competent engineer")
# question = Question.find(9)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Some fire extinguishers are available but not enough have been provided to mitigate the risks present ", recommendation: "Fire extinguishers should be sited in accordance with BS5306 and the appropriate number should be provided to cover the floor area of the premises, including emergency exits and social risks.")
# question = Question.find(9)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Some fire extinguishers have been provided however they are not appropriate for the risks in the premises.", recommendation: "Fire extinguisher should be provided should be the appropriate type to mitigate risks I the premises.")
# question = Question.find(9)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 10 #################################
# num = 0
# puts "working on question number 10"
# fault = Fault.new(fault_detail: "Fire extinguishers are available but have not been tested annually by a competent engineer", recommendation: "Fire extinguishers must be tested annually by a competent engineer in accordance with BS 5306 ")
# question = Question.find(10)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Fire extinguishers have been tested but the test is out-of-date", recommendation: "Fire extinguishers must be tested annually by a competent engineer in accordance with BS 5306, arrange for testing/maintenance to carried out as soon as possible")
# question = Question.find(10)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# ########################### Question 11 #################################
# num = 0
# puts "working on question number 11"
# fault = Fault.new(fault_detail: "Fire extinguishers are available but are not deemed suitable for the risk types in the premises ", recommendation: "Fire extinguisher must be sited in accordance with BS5306 and suitable for the risks in the premises.")
# question = Question.find(11)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# fault = Fault.new(fault_detail: "Fire extinguishers are available but there not enough to provide adequate protection as per BS 5306 part 8", recommendation: "Arrange for re-provision of fire extinguishers with a competant service provider")
# question = Question.find(11)
# fault.question = question
# fault.save!
# puts "fault #{num += 1} populated!"
# puts "All done - enjoyyour new drop-downs!"
