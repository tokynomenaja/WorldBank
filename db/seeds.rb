# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'faker'

 5.times do 
    Projet.create!(nom_du_projet: Faker::Name.name , ptf: Faker::Company.suffix ,secteur: 
Faker::Company.name, forme_d_appui: Faker::Company.bs )
 end
  puts"ok"
  
Secteur.destroy_all
      c0 = Secteur.create!(title:"Secteur")
      c1 = Secteur.create!(title: "MICROFINANCE")
      c2 = Secteur.create!(title: "INDUSTRIE EXTRACTIVE")
      c3 = Secteur.create!(title: "COMMERCE")
      c4 = Secteur.create!(title: "INFRASTRUCTURE")
      c5 = Secteur.create!(title: "TOURISME")
      c6 = Secteur.create!(title: "TOURISME AGROBUSINESS")
      c7 = Secteur.create!(title: "ENTREPRENARIAT")

Ptf.destroy_all
      c1 = Ptf.create!(title: "AFD")
      c2 = Ptf.create!(title: "BANQUE MONDIAL")
      c3 = Ptf.create!(title: "FIDA")
      c4 = Ptf.create!(title: "ONUDI")
      c5 = Ptf.create!(title: "UNICEF")
puts "secteur créées"