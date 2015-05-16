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
5.times do |i|
  email = Faker::Internet.email
  category = categories.sample(1)
  User.create(:category => category, :email => email)
end
#
#
#
#
#Fake Questions
# 5.times do |i|
#   title = Faker::Lorem.sentences(1)
#   body  = Faker::Lorem.paragraph
#   user_id = User.find[i].id
# Question.create(:title => title, :body => body, :user_id => user_id)
#
# end
# #
# #
# # #Fake Responses
# # 5.times do |i|
# #   body = Faker::Lorem.paragraph
# #   user_id = user[i].id
# #   question_id = question[i].id
# #
# # end
# #
# #
# # #Fake Tag
# # 5.times do |i|
# #   name = Faker:Lorem.word
# #   question_id = question[i].id
# # end
