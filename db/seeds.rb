# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#Dropdown menu for bruits on carotid_exam form.
Bruit.create(volume: "None")
Bruit.create(volume: "Quiet")
Bruit.create(volume: "Loud")

#Random list of technologist for testing purposes.
Technologist.create(firstname: "Sue", lastname: "D")
Technologist.create(firstname: "Bill", lastname: "O")
Technologist.create(firstname: "Howard", lastname: "H")
Technologist.create(firstname: "Sally", lastname: "P")

#Default users just in case.
    #Branden Alder's
User.create(username: "Trustyn", firstname: "Branden", lastname: "Alder",
            email: "trustyn@vascularscrub.com", password: "Password1",
            password_confirmation: "Password1", activated: true)
