# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

museums = ["Science Museum"]

exhibits_one = ["Exploring Space", "Information Age", "Energy Hall", "Making the Modern World"]

questions_Ex_one = ["What is the biggest object in this gallery?", "Which were the first astronauts to land on the moon?", "What kind of food do astronauts eat in space?", "Would you like to go into space?"]

questions_Ex_two = ["Can you find out when the first BBC radio broadcast was?", "How did wireless technology help save lives on the Titanic?", "Can you find what satellites in space do?", "What do you think like would be like without the tv or the internet?"]

questions_Ex_three = ["Can you find the oldest steam engine in this hall?", "When was it built?", "Choose one of the engines. Can you describe how it works?", "Steam still provides electricity for us today. Can you find out how much?"]

questions_Ex_four = ["Can you find Stephenson’s Rocket? What is it?", "How many cars are in this hall?", "What is the smallest item you can find in this gallery?", "If you were an inventor, what would you make?"]

word_list_game = [["exploring","space","astronauts","moon"], ["information","wireless","technology","broadcast"], ["energy","engine","steam","electricity"], ["modern","inventor","world","train"]]

word_list_game.each do |w|
  GameWord.create!(wordlist: w)
end

museums.each do |m|
  Museum.create!(name: m)
end

exhibits_one.each do |e|
  Exhibit.create!(name: e, museum_id: 1)
end

questions_Ex_one.each do |q|
  Question.create!(description: q, exhibit_id: 1)
end

questions_Ex_two.each do |q|
  Question.create!(description: q, exhibit_id: 2)
end

questions_Ex_three.each do |q|
  Question.create!(description: q, exhibit_id: 3)
end

questions_Ex_four.each do |q|
  Question.create!(description: q, exhibit_id: 4)
end
