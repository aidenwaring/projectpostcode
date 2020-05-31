# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Account.create!(email:"webmaster@postcode.com",display_name:"Enigma",password:"@dm1n@dm1n")
admin.add_role :admin

Account.create!(email:"choochoo@gmail.com",display_name:"Rails_Lover",password:"allaboard12")
Account.create!(email:"codemeister24@hotmail.com",display_name:"C'ing Is Believing",password:"dennisthemenace")
Account.create!(email:"morgothrules@gmail.com",display_name:"Balrogs4Lyf",password:"ishallpass")
Account.create!(email:"piepython@gmail.com",display_name:"PythonRules",password:"applecrumble")

puts "Accounts: #{Account.count} created successfully."