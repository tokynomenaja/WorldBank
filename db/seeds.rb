# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'faker'

 
  
Secteur.destroy_all
      c1 = Secteur.create!(title: "MICROFINANCE")
      c2 = Secteur.create!(title: "INDUSTRIE EXTRACTIVE")
      c3 = Secteur.create!(title: "COMMERCE")
      c4 = Secteur.create!(title: "INFRASTRUCTURE")
      c5 = Secteur.create!(title: "TOURISME")
      c6 = Secteur.create!(title: "TOURISME AGROBUSINESS")
      c7 = Secteur.create!(title: "ENTREPRENARIAT")
puts "Filiere crée"


Ptf.destroy_all
      c1 = Ptf.create!(title: "Helvetas")
      c2 = Ptf.create!(title: "FMI")
      c3 = Ptf.create!(title: "IFC")
      c4 = Ptf.create!(title: "UE")
      c5 = Ptf.create!(title: "UNICEF")
      c6 = Ptf.create!(title: "GIZ")
      c7 = Ptf.create!(title: "Agence Française de Developpement")
      c8 = Ptf.create!(title: "ONUDI")
      c9 = Ptf.create!(title: "JICA")
      c10 = Ptf.create!(title: "USAID")
      c11 = Ptf.create!(title: "BAD")
      c12 = Ptf.create!(title: "PNUD")
      c13 = Ptf.create!(title: "FIDA")
      c14= Ptf.create!(title: "CNUCED")
      c12 = Ptf.create!(title: "Fond Europeen Developpement")
      c13 = Ptf.create!(title: "BANQUE MONDIALE")
    
      



puts "Ptf"

Filiere.destroy_all
      c1 = Filiere.create!(title: "Apiculture")
      c2 = Filiere.create!(title: "Artisanat")
      c3 = Filiere.create!(title: "Aviculture")
      c4 = Filiere.create!(title: "Boviculture")
      c5 = Filiere.create!(title: "Culture maraiĉhère")
      c6 = Filiere.create!(title: "Epices")
      c7 = Filiere.create!(title: "Fruit")
      c8 = Filiere.create!(title: "Grains secs")
      c9 = Filiere.create!(title: "pêche")
      c10 = Filiere.create!(title: "pisciculture")
      c11 = Filiere.create!(title: "Racine")
      c12 = Filiere.create!(title: "Tubercule")
      c13 = Filiere.create!(title: "transformation")
      c14 = Filiere.create!(title: "Commerce")
      c15 = Filiere.create!(title: "agrobusiness")
     
 puts "Filiere cree"    

Iga.destroy_all
      
      c1 = Iga.create!(title: "Ministère de l’Energie, de l’Eau et des Hydrocarbures")
      c2 = Iga.create!(title: "Ministère de l Economie et des Finances")
      c3 = Iga.create!(title: "MICA (Ministère de l’Industrie, du Commerce et de l’Artisanat )")
      c4 = Iga.create!(title: "Ministère de l’Enseignement Supérieur et de la Recherche Scientifique ")
      c5 = Iga.create!(title: "Ministère de l’Agriculture, de l’Elevage et de la Pêche" )
      c6 = Iga.create!(title: "Ministère de l Economie et des Finances Ministère de l Aménagement du Territoire,
                      de l Habitat et des Travaux Publics")
      c7 = Iga.create!(title: "Ministère de la Communication et de la Culture" )
      c8 = Iga.create!(title: "Ministère du Tourisme des Transports et de la Météorologie")
      c9 = Iga.create!(title: "Office National du Tourisme de Madagascar")
      c10 =Iga.create!(title: "Ministère de l Environnement" )

puts "iga cree"

Zone.destroy_all

      z1 = Zone.create!(title:"Diana")
      z2 = Zone.create!(title:"Sava")
      z3 = Zone.create!(title:"Itasy")
      z4 = Zone.create!(title:"Analamanga")
      z5 = Zone.create!(title:"Vakinakaratra")

      z6 = Zone.create!(title:"Bongolava")
      z7 = Zone.create!(title:"Sofia")
      z8 = Zone.create!(title:"Boeny")
      z9 = Zone.create!(title:"Betsileo")
      z10 = Zone.create!(title:"Melaky")

      z11= Zone.create!(title:"Alaotra-mangoro")
      z12= Zone.create!(title:"Atsinanana")
      z13= Zone.create!(title:"Analanjirofo")
      z14 = Zone.create!(title:"Amoron'i Mania")
      z15= Zone.create!(title:"Haute Matsiatra")

      z16 = Zone.create!(title:"Vatovavy-Fitovinany")
      z17= Zone.create!(title:"Atsimo-Andrefana")
      z18= Zone.create!(title:"Ihorombe")
      z19= Zone.create!(title:"Menabe")
      z20= Zone.create!(title:"Atsimo-atsinana")

      z21= Zone.create!(title:"Androy")
      z22= Zone.create!(title:"Anosy")
     
puts "zone cree"
 
 Montant.destroy_all

      m1 = Montant.create!(price:"5M-10M")
      m2 = Montant.create!(price:"10M-15M")
      m3 = Montant.create!(price:"15M-20M")
      m4 = Montant.create!(price:"20M-35M")
      m5= Montant.create!(price:"35M-40M")
      m6 = Montant.create!(price:"45M-50M")
      m7 = Montant.create!(price:"50M-55M")


Appui.destroy_all
      
      a1 = Appui.create!(title:"Prêt")
      a2 = Appui.create!(title:"Don")
Beneficiaire.destroy_all
      
       b1 = Beneficiaire.create!(title:"Douane")
       b2 = Beneficiaire.create!(title:"Ministères
                                  Operateurs Miniers")
       b3 = Beneficiaire.create!(title:"Producteurs Ménages Ruraux")
       b4 = Beneficiaire.create!(title:"Micro-entreprises Rurales
                                  Jeunes")
       b5 = Beneficiaire.create!(title:"Petites Industries Rurales
                                  Secteur-Privé")
       b6 = Beneficiaire.create!(title:"Producteurs
                                  Secteur-Privé")
       b7 = Beneficiaire.create!(title:"Citoyens
                                  Touristes
                                  Secteur-Privé")
       b8 = Beneficiaire.create!(title:"Institutions de micro-finance")
       b9 = Beneficiaire.create!(title:"")
       b10 = Beneficiaire.create!(title:"")
       b12 = Beneficiaire.create!(title:"")
