# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 
  
Secteur.destroy_all
      C0 = Secteur.create!(title:"")
      c1 = Secteur.create!(title: "MICROFINANCE")
      c2 = Secteur.create!(title: "INDUSTRIE EXTRACTIVE")
      c3 = Secteur.create!(title: "COMMERCE")   
      c4 = Secteur.create!(title: "INFRASTRUCTURE")
      c5 = Secteur.create!(title: "TOURISME")
      c6 = Secteur.create!(title: "TOURISME AGRIBUSINESS")     
      c7 = Secteur.create!(title: "ENTREPRENARIAT")
      c8 = Secteur.create!(title: "INDUSTRIE TEXTILE")
      c9 = Secteur.create!(title: "AGROBUSINESS")
      c10 = Secteur.create!(title: "TOURISME")

puts "Filiere crée"


Ptf.destroy_all
      c0 = Ptf.create!(title:"")
      c1  = Ptf.create!(title: "Helvetas")
      c2  = Ptf.create!(title: "FMI")
      c3  = Ptf.create!(title: "IFC")
      c4  = Ptf.create!(title: "UE")
      c5  = Ptf.create!(title: "UNICEF")
      c6  = Ptf.create!(title: "GIZ")
      c7  = Ptf.create!(title: "Agence Française de Developpement")
      c8  = Ptf.create!(title: "ONUDI")
      c9  = Ptf.create!(title: "JICA")
      c10 = Ptf.create!(title: "USAID")
      c11 = Ptf.create!(title: "BAD")
      c12 = Ptf.create!(title: "PNUD")
      c13 = Ptf.create!(title: "FIDA")
      c14 =  Ptf.create!(title:  "CNUCED")
      c12 = Ptf.create!(title: "Fond Europeen Developpement")
      c13 = Ptf.create!(title: "BANQUE MONDIALE")
    
      



puts "Ptf"

Filiere.destroy_all
      c0 = Filiere.create!(title:"")
      c1 = Filiere.create!(title: "Apiculture")
      c2 = Filiere.create!(title: "Artisanat")
      c3 = Filiere.create!(title: "Aviculture")
      c4 = Filiere.create!(title: "Boviculture")
      c5 = Filiere.create!(title: "Culture maraiĉhère")
      c6 = Filiere.create!(title: "Epices")
      c7 = Filiere.create!(title: "Fruit")
      c8 = Filiere.create!(title: "Grains secs")
      c9 = Filiere.create!(title: "Pêche")
      c10 = Filiere.create!(title: "Pisciculture")
      c11 = Filiere.create!(title: "Racine")
      c12 = Filiere.create!(title: "Tubercule")
      c13 = Filiere.create!(title: "Transformation")
      c14 = Filiere.create!(title: "Commerce")
      c15 = Filiere.create!(title: "Agrobusiness")
     
 puts "Filiere create"    

Iga.destroy_all
      c0 = Iga.create!(title:"")
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
      c11 = Iga.create!(title: "MAEP")
      c12 = Iga.create!(title: "EDBM")
      c13 = Iga.create(title: "M2PATE")
      c14 = Iga.create(title:"MIDSP")


puts "iga create"

Zone.destroy_all
      zo = Zone.create!(title:"")
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

      z11 = Zone.create!(title:"Alaotra-mangoro")
      z12 = Zone.create!(title:"Atsinanana")
      z13 = Zone.create!(title:"Analanjirofo")
      z14 = Zone.create!(title:"Amoron'i Mania")
      z15= Zone.create!(title:"Haute Matsiatra")

      z16 = Zone.create!(title:"Vatovavy-Fitovinany")
      z17 = Zone.create!(title:"Atsimo-Andrefana")
      z18 = Zone.create!(title:"Ihorombe")
      z19 = Zone.create!(title:"Menabe")
      z20 = Zone.create!(title:"Atsimo-atsinana")

      z21 = Zone.create!(title:"Androy")
      z22 = Zone.create!(title:"Anosy")
      z23 = Zone.create!(title:"Sainte-Marie")
      z24 = Zone.create(title:"National")
puts "zone create"
 
 Montant.destroy_all
      m0 = Montant.create!(price:"")
      m1 = Montant.create!(price:"5M-10M")
      m2 = Montant.create!(price:"10M-15M")
      m3 = Montant.create!(price:"15M-20M")
      m4 = Montant.create!(price:"20M-35M")
      m5= Montant.create!(price:"35M-40M")
      m6 = Montant.create!(price:"45M-50M")
      m7 = Montant.create!(price:"50M-55M")
      m8 = Montant.create!(price:"60M-65M")
      m9 = Montant.create!(price:"65M-70M")

Appui.destroy_all
      a0 = Appui.create!(title:"")
      a1 = Appui.create!(title:"Prêt")
      a2 = Appui.create!(title:"Don")

puts "Appui create"


Beneficiaire.destroy_all
     
        b0 = Beneficiaire.create!(title:"")
       b1 = Beneficiaire.create!(title:"Douane")
       b2 = Beneficiaire.create!(title:"Ministères
                                  Operateurs Miniers")
       b3 = Beneficiaire.create!(title:"Producteurs Ménages Ruraux")            
                                                                         
       b4 = Beneficiaire.create!(title:"Micro-entreprises Rurales                     
                                  Jeunes")
       b5 = Beneficiaire.create!(title:"Petites Industries Rurales
                                  Secteur-Privé")
       b6 = Beneficiaire.create!(title:"Producteurs")
                                  
       b7 = Beneficiaire.create!(title:"Citoyens  Touristes
                                  Secteur-Privé")
                                 
       b8 = Beneficiaire.create!(title:"Institutions de micro-finance")
       b9 = Beneficiaire.create!(title:"Agriculteurs")
       b10 = Beneficiaire.create!(title:"Commerçants")
       b11 = Beneficiaire.create!(title:"investisseur en agro-industrie")
       b12 = Beneficiaire.create!(title:"citoyens")
       b13 = Beneficiaire.create!(title: "Secteur-Privé")
       b14 = Beneficiaire.create!(title:"investisseurs privés")
       b15 = Beneficiaire.create(title:"femmes etjeunes entrepreneurs")
       b16 = Beneficiaire.create(title:"structures gouvernementales")
       b17 = Beneficiaire.create(title:"EDBM")
       b18 = Beneficiaire.create(title:"structures intermediaire")
puts "Beneficiaire"


@pro = Projet.new(nom_du_projet: "MADAGASCAR INTEGRATED GROWTH POLES AND CORRIDOR - PIC 2.2", objectif_generale_du_projet: "Contribuer au développement durable des secteurs tourisme et
              agroalimentaire en améliorant l'accès aux infrastructures et 
              aux services dans les régions cibles de Madagascar.",  aspsp: "
              Composante 1:
               Tirer parti des investissements privés dans le tourisme et
              l'agroalimentaire
              Facilitation des Investissements Privés et de l’Entreprenariat à Madagascar (FIEM)
              La FIEM, un programme de subventions concurrentiel, soutiendra la création de nouvelles entreprises et 
              de PME axées sur la croissance et 
              la réalisation d'investissements présentant des externalités économiques, environnementales et
               sociales importantes dans les secteurs clés du projet, à savoir le tourisme et l'agroalimentaire.
              Soutien à la promotion et aux transactions des investissements
              Fournir au gouvernement un soutien en matière de promotion des investissements et 
              de conseil en transactions afin d'améliorer l'interface entre les secteurs public et 
              privé pour les investisseurs et de renforcer la capacité d'inviter et
               de gérer de manière stratégique davantage d'investissements privés.

              Composante 2: 
              Suppression des principales contraintes liées aux investissements privés dans le tourisme
              Soutenir la capacité de gestion publique liée au tourisme
              Fournir un soutien continu aux institutions de tourisme pour encourager 
              des approches plus stratégiques de développement du tourisme et 
              une coordination axée sur le marché pour le développement du secteur. 
              Il financera l'Assistance Technique, le renforcement des capacités,
              l'équipement et les travaux de génie civil.
              Améliorer la connectivité urbaine et des services pour le développement du tourisme
              Financer des travaux et des équipements publics afin de créer un environnement urbain plus favorable et 
              plus sûr pour les citoyens et les touristes et 
              de renforcer l’attrait des investissements dans le secteur de l’hôtellerie, par :
              - Routes urbaines à Nosy-Be
              - L'eau à Tuléar" , partenaire_d_implementaton: "" ,
              debut_du_projet: "01/01/2019" , fin: "01/01/2024" , apdem: "Priorité 21, 25, 27")

              @pro.ptf = Ptf.find(10)
              @pro.montant = Montant.find(9)
              @pro.appui = Appui.find(1)
              @pro.save
           

                Zoneprojet.create!(projet_id: 1 , zone_id: 2)
                Zoneprojet.create!(projet_id: 1 , zone_id: 18)
                Zoneprojet.create!(projet_id: 1 , zone_id: 23)
                Zoneprojet.create!(projet_id: 1 , zone_id: 23)

                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 10)
                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 11)
                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 12)
                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 13)
                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 14)

                Igaprojet.create!(projet_id: 1 , iga_id: 4)
                Igaprojet.create!(projet_id: 1 , iga_id: 12)
                Igaprojet.create!(projet_id: 1 , iga_id: 13)


                Secteurprojet.create(projet_id: 1 , secteur_id: 14)
                Secteurprojet.create(projet_id: 1 , secteur_id: 15)

puts "projet create1"
 

 @pro2 = Projet.new(nom_du_projet: "Projet d'Appui à la Promotion des investissements - PAPI",
                objectif_generale_du_projet: "Mise en place des conditions propices pour une meilleure promotion des investissements privés nationaux et
                 étrangers. Il a été conçu avec une approche participative afin d’aider les structures bénéficiaires à s’approprier des objectifs du projet et
                 de faciliter le renforcement de leurs capacités pour une durabilité de l’intervention.",
               aspsp: "* Préparer une stratégie et un plan d’action sur les opportunités d’investissements dans le textile,
                mettre en place un cadre de concertation public-privé,
                mettre en place un Fonds de Promotion du Secteur Textile (FPST),
                faire une étude de faisabilité pour la mise en place d’une Zone économique spéciale pour le textile.
                Renforcer les capacités de l’EDBM et 
                  des structures intervenant dans la promotion des investissements : Formation; mise à  disposition d’un Expert Résident pour un transfert de connaissance,
                 missions internationales d’échange d’expérience sur la promotion.", 
              forme_d_appui: "SOUTIEN A LA PROMOTION DES INVESTISSEMENTS PRIVES",
              partenaire_d_implementaton: "EDBM",
              debut_du_projet: "01/01/2019", 
              fin: "02/03/2020", apdem:"")

                @pro2.ptf = Ptf.find(11)
                @pro2.montant = Montant.find(1)
                @pro2.appui = Appui.find(1)
                @pro2.save
           

                Zoneprojet.create!(projet_id: 2 , zone_id: 23)
               

                Benefprojet.create!(projet_id: 2 , beneficiaire_id: 15)
                Benefprojet.create!(projet_id: 2 , beneficiaire_id: 16)
                Benefprojet.create!(projet_id: 2 , beneficiaire_id: 17)
               

                Igaprojet.create!(projet_id: 2 , iga_id: 12)
                Igaprojet.create!(projet_id: 2 , iga_id: 13)
                Igaprojet.create!(projet_id: 2 , iga_id: 11)


                Secteurprojet.create(projet_id: 2 , secteur_id: 9)
                Secteurprojet.create(projet_id: 2 , secteur_id: 10)
                Secteurprojet.create(projet_id: 2 , secteur_id: 11)


puts "projet create1"
 @pro3 = Projet.new(nom_du_projet: "Projet de Croissance Agricole et 
                    de Sécurisation Foncière - CASEF", 
               objectif_generale_du_projet: "Améliorer la sécurisation foncière et 
               l'accès aux marchés des ménages agricoles ciblés en milieu rural, au sein de chaînes de valeur spécifiques, et
                déployer une intervention immédiate et
                 efficace face à une crise ou urgence éligible
                 ",aspsp: "
                .Composante 1 : 
                    Appui aux filières d'agriculture commerciale et développement de l'agribusiness
                Organisation, coordination et planification des chaînes de valeur
                Mise en place de mécanismes de gouvernance des chaînes de valeur et application de la réglementation
                Formation du personnel technique et les producteurs en partenariat avec le secteur privé.
                Promouvoir l'utilisation des TIC, diffuser les pratiques de sélection génétiques.
                Améliorer l'accès aux technologies améliorées
                Renforcer l’EDBM et les ministères compétents pour la promotion de l’investissement agro-industriel, les services de santé animale et végétale, les services de certification et les services de coordination des filières agro-industrielles
                Améliorer l'accès au financement de l'agriculture à travers un fond de garantie spécial pour l'agribusiness
                . Composante 2 : 
                    Appui à la Politique foncière et enregistrement des droits fonciers 
                Appui à la réforme foncière à travers un appui à l'EDBM pour la mise en place d'un cadre d'investissement agricole
                Appui à l'enregistrement des titres et certificats fonciers
                Composante 3 : Développement d’infrastructures de commercialisation 
                Développement d'infrastructures de stockage : Appui au système de crédit stockage dans les greniers communs villageois (GCV), construction de nouveaux GCV
                 .Composante 4 - 
                 Coordination de projet, guidage des investissements agricoles et appui aux politiques publiques
                  ",
                forme_d_appui: "
                - Appui au développement des chaines de valeur
                - Facilitation et mise en place de politiques publiques promouvant l'agribusiness
                - Infrastructures Routières",
               partenaire_d_implementaton: "
              - Projet PIC
              - Ministère de l’Agriculture,de l’Elevage et de la Pêche
                  " ,
               debut_du_projet: " 2015",
                fin: "2021", 
                apdem: "Priorité 8, 27")

                @pro3.ptf = Ptf.find(13)
                @pro3.montant = Montant.find(8)
                @pro3.appui = Appui.find(2)
                @pro3.save
           

                Zoneprojet.create!(projet_id: 3 , zone_id: 14)
                Zoneprojet.create!(projet_id: 3 , zone_id: 13)
                Zoneprojet.create!(projet_id: 3 , zone_id:  4)
                Zoneprojet.create!(projet_id: 3 , zone_id:  3)
                Zoneprojet.create!(projet_id: 3 , zone_id:  2)
                Zoneprojet.create!(projet_id: 3 , zone_id:  6)

                Benefprojet.create!(projet_id: 3 , beneficiaire_id: 7)
                Benefprojet.create!(projet_id: 3 , beneficiaire_id: 17)
                Benefprojet.create!(projet_id: 3 , beneficiaire_id: 18)
             
                Igaprojet.create!(projet_id: 3 , iga_id:4)
                Igaprojet.create!(projet_id: 3 , iga_id: 12)
                Igaprojet.create!(projet_id: 3 , iga_id: 13)


                Secteurprojet.create(projet_id: 3 , secteur_id: 10)
                Secteurprojet.create(projet_id: 3 , secteur_id: 4)
                 Secteurprojet.create(projet_id: 3 , secteur_id: 3)



puts "projet create3"




 @pro4 = Projet.new(nom_du_projet: "Formation Professionnelle d'Amélioration de la Production Agricole (FORMAPROD)", 
                   objectif_generale_du_projet: "FORMAPROD vise à revaloriser les métiers de l’agriculture par la 
                                                formation agricole qualifiante des 
                                                jeunes générations en vue d’augmenter significativement la 
                                         productivité des Exploitations Agricoles Familiales (EAF)",
                   aspsp:"Aménagements hydro-agricoles,
                          infrastructures de soutien à la commercialisation et 
                          à la transformation (marché communal, magasins de groupage, etc.),
                          désenclavements des pôles agricoles.",
                   forme_d_appui: "",
                   partenaire_d_implementaton: "Administration",
                   debut_du_projet: "01/01/2012", 
                   fin: "01/01/2022" , apdem: "Proprieté 27")
                   @pro4.ptf = Ptf.find(13)
                   @pro4.montant = Montant.find(5)
                   @pro4.appui = Appui.find(2)                 
                   @pro4.save
           
                              Zoneprojet.create!(projet_id: 4 , zone_id: 5)                 
                              Zoneprojet.create!(projet_id: 4 , zone_id: 4)                 
                              Zoneprojet.create!(projet_id: 4 , zone_id: 16)                 
                              Zoneprojet.create!(projet_id: 4 , zone_id: 16)                 
                              Zoneprojet.create!(projet_id: 4 , zone_id: 17)
                              Zoneprojet.create!(projet_id: 4 , zone_id: 19)                 
                              Zoneprojet.create!(projet_id: 4 , zone_id: 13)                 
                              Zoneprojet.create!(projet_id: 4 , zone_id: 14)                 
                              Zoneprojet.create!(projet_id: 4 , zone_id: 8)                
                              Zoneprojet.create!(projet_id: 4 , zone_id: 11)
                              Zoneprojet.create!(projet_id: 4 , zone_id: 20)                 
                              Zoneprojet.create!(projet_id: 4 , zone_id: 23)                 
                              Zoneprojet.create!(projet_id: 4 , zone_id: 22)

                             Benefprojet.create!(projet_id: 4 , beneficiaire_id: 4)
                       

                             Igaprojet.create!(projet_id: 4 , iga_id: 5)                 
                             Igaprojet.create!(projet_id: 4 , iga_id: 6)                 
                             Igaprojet.create!(projet_id: 4 , iga_id: 7)

                             Secteurprojet.create(projet_id: 4 , secteur_id: 5)                
                             Secteurprojet.create(projet_id: 4 , secteur_id: 10)

 puts "projet create4"

