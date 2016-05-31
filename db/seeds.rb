# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bruit.create(volume: "None")
Bruit.create(volume: "Quiet")
Bruit.create(volume: "Loud")
Technologist.create(firstname: "Sue", lastname: "D")
Technologist.create(firstname: "Bill", lastname: "O")
Technologist.create(firstname: "Howard", lastname: "H")
Technologist.create(firstname: "Sally", lastname: "P")
User.create(username: "Trustyn", firstname: "Branden", lastname: "Alder",
            email: "blah@v.com", password: "Password1",
            password_confirmation: "Password1", activated: true)