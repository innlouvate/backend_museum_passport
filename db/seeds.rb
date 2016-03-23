# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

museums = ["museum one"]

exhibits_one = ["exhibit one"]

questions_one = ["question one", "question two", "question three", "question four"]

museums.each do |m|
  Museum.create!(name: m)
end

exhibits_one.each do |e|
  Exhibit.create!(name: e, museum_id: 1)
end

questions_one.each do |q|
  Question.create!(description: q, exhibit_id: 1)
end
