# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(username: 'Fluffy')
puts "Created user #{user1.username}"
user2 = User.create!(username: 'Thrasher')
puts "Created user #{user2.username}"


chat_room = ChatRoom.create!(title: 'Massive Awesomness')
UserChat.create!(chat_room: chat_room, user: user1)
UserChat.create!(chat_room: chat_room, user: user2)


user1.messages.create!(body: 'blah', chat_room: chat_room)
user2.messages.create!(body: 'blah blah', chat_room: chat_room)
user1.messages.create!(body: 'blah blah blah', chat_room: chat_room)
user2.messages.create!(body: 'right', chat_room: chat_room)
