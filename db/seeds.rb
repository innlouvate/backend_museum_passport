# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

museums = ["Science Museum", "Natural History Museum", "British Museum"]

exhibits_one = ["Exploring Space", "Information Age", "Energy Hall", "Making the Modern World"]

exhibits_two = ["Dinosaurs", "Volcanoes and Earthquakes", "Fishes, Amphibians and Reptiles", "Creepy Crawlies"]

exhibits_three = ["Ancient Egypt", "Americas", "Asia", "Europe"]


questions_Ex_one_a = ["What is the biggest object in this gallery?", "Who were the first astronauts to land on the moon?", "What kind of food do astronauts eat in space?", "Would you like to go into space?"]
questions_Ex_one_b = ["Can you find out when the first BBC radio broadcast was?", "How did wireless technology help save lives on the Titanic?", "Can you find what satellites in space do?", "What do you think life would be like without the tv or the internet?"]
questions_Ex_one_c = ["Can you find the oldest steam engine in this hall?", "When was it built?", "Choose one of the engines. Can you describe how it works?", "Steam still provides electricity for us today. Can you find out how much?"]
questions_Ex_one_d = ["Can you find Stephenson’s Rocket? What is it?", "How many cars are in this hall?", "What is the smallest item you can find in this gallery?", "If you were an inventor, what would you make?"]

questions_Ex_two_a = ["Which is the biggest dinosaur in this gallery?", "Which fossil is your favourite?", "Which dinosaur do you think is the scariest?", "If you were a dinosaur, which one would you be and why?"]
questions_Ex_two_b = ["Can you find out how volcanoes erupt?", "Find the objects that have been melted by lava. How hot do you think it was?", "Go on the earthquake simulator. What does it feel like?", "Find the heat suits worn by scientists studying volcanoes. Would you like to study volcanoes?"]
questions_Ex_two_c = ["What is the strangest creature you can find here?", "Find the furry frog!  What species is it?", "Which animals in this exhibition live in a swamp?", "Can you find out what was once discovered in the stomach of a Nile crocodile?"]
questions_Ex_two_d = ["Find and play the interactive game to build a spider. What did you find out?", "What are some ways that insects communicate with each other?", "What is the most colourful insect you can find?", "Which is the hairiest insect in this gallery?"]

questions_Ex_three_a = ["What is the Rosetta stone?", "Can you find how mummies were made?", "What can you learn from an Egyptian tomb?", "Name three things you can find out about life in Ancient Egypt."]
questions_Ex_three_b = ["Find an instrument from ancient Colombia. What is it called?", "Can you find what ‘El Dorado’ means?", "Name three different countries that are in the Americas.", "What do you think is the most interesting object in this gallery?"]
questions_Ex_three_c = ["Look out for the Chinese jade. What kind of items are made from it?", "In the Japan galleries, can you find the oldest Samurai warrior sword?", "In the Amravati room, can you find out a fact about the Buddha?", "Go to the Chinese ceramics room. Do you think these objects were used in everyday life?"]
questions_Ex_three_d = ["What was found at Sutton Hoo in Suffolk?", "Find a ‘Byzantine’ object in the Medieval Europe room and describe it.", "Take a look at the Celtic Art. Can you find out what a ‘torc’ is?", "Visit the Roman Britain exhibition. Can you name some things that the Romans brought with them to Britain?"]


word_list_game = ["exploring,space,astronauts,moon", "information,wireless,technology,broadcast", "energy,engine,steam,electricity", "modern,inventor,world,train"]

word_list_game.each do |w|
  GameWord.create!(wordlist: w)
end

museums.each do |m|
  Museum.create!(name: m)
end

exhibits_one.each do |e|
  Exhibit.create!(name: e, museum_id: 1)
end
exhibits_two.each do |e|
  Exhibit.create!(name: e, museum_id: 2)
end
exhibits_three.each do |e|
  Exhibit.create!(name: e, museum_id: 3)
end

questions_Ex_one_a.each do |q|
  Question.create!(description: q, exhibit_id: 1)
end
questions_Ex_one_b.each do |q|
  Question.create!(description: q, exhibit_id: 2)
end
questions_Ex_one_c.each do |q|
  Question.create!(description: q, exhibit_id: 3)
end
questions_Ex_one_d.each do |q|
  Question.create!(description: q, exhibit_id: 4)
end

questions_Ex_two_a.each do |q|
  Question.create!(description: q, exhibit_id: 5)
end
questions_Ex_two_d_b.each do |q|
  Question.create!(description: q, exhibit_id: 6)
end
questions_Ex_two_c.each do |q|
  Question.create!(description: q, exhibit_id: 7)
end
questions_Ex_two_d.each do |q|
  Question.create!(description: q, exhibit_id: 8)
end

questions_Ex_three_a.each do |q|
  Question.create!(description: q, exhibit_id: 9)
end
questions_Ex_three_b.each do |q|
  Question.create!(description: q, exhibit_id: 10)
end
questions_Ex_three_c.each do |q|
  Question.create!(description: q, exhibit_id: 11)
end
questions_Ex_three_d.each do |q|
  Question.create!(description: q, exhibit_id: 12)
end
