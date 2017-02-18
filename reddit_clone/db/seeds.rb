# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "vinson", password:"password")
User.create(username: "andrew", password:"password")

Sub.create(title: "some title", description: "asdf", user_id: 1)
Sub.create(title: "not a  title", description: "asdfxczv", user_id: 2)
Sub.create(title: "food", description: "yum", user_id: 1)
Sub.create(title: "nsfw", description: "nsfw", user_id: 2)
