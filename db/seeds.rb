# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy old seeds"
Message.destroy_all
User.destroy_all
Channel.destroy_all

puts "Create channels"
channel_general = Channel.new(name: "general")
channel_general.save!

channel_paris = Channel.new(name: "paris")
channel_paris.save!

channel_react = Channel.new(name: "react")
channel_react.save!

puts "Create users"
user_toto = User.new(email: "toto@toto.com", password: "123456")
user_toto.save!

user_tata = User.new(email: "tata@tata.com", password: "123456")
user_tata.save!

user_titi = User.new(email: "titi@titi.com", password: "123456")
user_titi.save!

puts "Create messages"
message_general_toto = Message.new(channel: channel_general, user: user_toto, content: "coucou c'est toto dans le channel general")
message_general_toto.save!

message_general_tata = Message.new(channel: channel_general, user: user_tata, content: "coucou c'est tata dans le channel general")
message_general_tata.save!

message_general_titi = Message.new(channel: channel_general, user: user_titi, content: "coucou c'est titi dans le channel general")
message_general_titi.save!

message_paris_toto = Message.new(channel: channel_paris, user: user_toto, content: "coucou c'est toto dans le channel paris")
message_paris_toto.save!
