# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
#
categories = ["Law Maker", "Policy Maker"]

#Fake users
counter = 0
5.times do

  if counter == 2
    counter = 0
  end

  email = Faker::Internet.email
  category = categories.sample
  newUser= User.create!(
  category: category,
  email: email,
  password: "password",
  password_confirmation: "password",
  created_at: Time.zone.now)

  counter += 1
end




#Fake Questions
5.times do |i|
  i = 1
  title = Faker::Lorem.sentences(1)
  body  = Faker::Lorem.paragraph
  user_id = User.find(i)
Question.create!(:title => title, :body => body, :user_id => user_id)
end


#Fake Responses
5.times do |i|
  i = 1
  body = Faker::Lorem.paragraph
  user_id = User.find(i).id
  question_id = Question.find(i).id
  Response.create!(body: body, user_id: user_id, question_id: question_id)
end


#Fake Tag
5.times do |i|
  name = Faker::Lorem.word
  question_id = Question.find(1).id
  Tag.create!(name: name, question_id: question_id)
end
