# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
#
User.create!(
  name: "Svenja Graefen",
  city: "Berlin",
  country: "de",
  email: "mail@svenjagraefen.de",
  password: "password",
  password_confirmation: "password",
  website: "http://svenjagraefen.de",
  facebook_link: "https://fb.com/svenjagraefen",
  year_of_birth: 1990,
  admin: true)

# TODO: to be added when we have the colums
# video: "https://www.youtube.com/watch?v=tKDqWYuaNVU",
# Kann wann: Wochenende, unter der Woche, Urlaubs-/Ferienzeiten
# Kann wo: überall
# Reist mit: Zug 'im Besitz von: BC50


User.create!(
  name: "Franziska Holzheimer",
  city: "Wien",
  country: "at",
  email: "info@franziskaholzheimer.de",
  password: "password",
  password_confirmation: "password",
  website: "http://www.franziskaholzheimer.de",
  year_of_birth: 1988,
  admin: true)
	 
# TODO: to be added when we have the colums
# video: "https://vimeo.com/89895541"
# Kann wann: Wochenende, unter der Woche, Urlaubs-/Ferienzeiten
# Kann wo: überall
# Reist mit: Zug; im Besitz von: BC50, Vorteilscard Classic (Name Österreichcard ist falsch ;D)
 
cities = ["Hamburg", "Berlin", "München", "Frankfurt am Main", "Bremen", "Stuttgart", "Düsseldorf"]

37.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  password = 'password'
  User.create!(
  	name: name,
  	email: email,
  	password: password,
  	password_confirmation: password,
  	city: cities.sample,
  	country: "de")
end

