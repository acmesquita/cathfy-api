# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create colors
10.times do
  Label.create({
    color: Faker::Color.hex_color.to_s
  })
end
puts 'Create Labels'
# Create users
3.times do
  User.create({
    name: Faker::Name.name,
    photo: 'https://timedotcom.files.wordpress.com/2017/12/terry-crews-person-of-year-2017-time-magazine-2.jpg'
  })
end
puts 'Create Users'
# Create Lists

3.times do
  board = Board.create({
    title: "Projeto #{rand(3)+1}",
    color: Faker::Color.hex_color.to_s
  })
  List.create({
    title: 'Tarefas',
    creatable: true,
    board: board
  });
  
  List.create({
    title: 'Fazendo',
    board: board
  });
  
  List.create({
    title: 'Pausado',
    board: board
  });
  
  List.create({
    title: 'Concluído',
    done:true,
    board: board
  });
end

puts 'Create Boards'

puts 'Create Lists'
#Create Cards
# 5.times do
#   color = Label.find(rand(9)+1).color
#   Card.create({
#     content: Faker::Lorem.sentence(word_count: 5, supplemental: false, random_words_to_add: 6),
#     description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 26),
#     user: User.find(rand(3)+1),
#     list: List.find(rand(3)+1),
#     labels: color
#   })

# end
# puts 'Create Cards'

# List.all.each do |list|

#   list.cards.each_with_index do |card, index|
#     card.position = index
#     card.save
#   end

# end

# puts 'Update position to cards in lists'