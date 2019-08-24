# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create colors
# 10.times do
#   Label.create({
#     color: Faker::Color.hex_color.to_s
#   })
# end
# puts 'Create Labels'
# # Create users
# 3.times do
#   User.create({
#     name: Faker::Name.name,
#     photo: 'https://timedotcom.files.wordpress.com/2017/12/terry-crews-person-of-year-2017-time-magazine-2.jpg'
#   })
# end
# puts 'Create Users'
# # Create Lists

# List.create({
#   title: 'Tarefas',
#   creatable: true
# });

# List.create({
#   title: 'Fazendo'
# });

# List.create({
#   title: 'Pausado'
# });

# List.create({
#   title: 'Concluído',
#   done:true
# });
# puts 'Create Lists'
# #Create Cards
# 15.times do
#   color = Label.find(rand(9)+1).color
#   Card.create({
#     content: Faker::Lorem.sentence(word_count: 5, supplemental: false, random_words_to_add: 6),
#     user: User.find(rand(3)+1),
#     list: List.find(rand(3)+1),
#     labels: color
#   })

# end
# puts 'Create Cards'

List.all.each do |list|

  list.cards.each_with_index do |card, index|
    card.position = index
    card.save
  end

end