# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
   
Secteur.destroy_all

      c1 = Secteur.create!(title: "INDUSTRIE EXTRACTIVE")
      c2 = Secteur.create!(title: "COMMERCE")   
      c3 = Secteur.create!(title: "INFRASTRUCTURES")
      c4 = Secteur.create!(title: "TOURISME")   
      c5 = Secteur.create!(title: "ENTREPREUNARIAT")
      c7 = Secteur.create!(title: "AGROBUSINESS")
      c8 = Secteur.create!(title: "PROMOTION DES INVESTISSEMENTS")
      c9 = Secteur.create!(title: "FINANCES")
      c10 = Secteur.create!(title: "ENERGIE")

puts "Secteur créée"


Engagement.destroy_all

      c1  = Engagement.create!(title: "Engagement 1 : La paix et la sécurité")
      c2  = Engagement.create!(title: "Engagement 2 : Lutte contre la corruption avec tolérance zéro")
      c3  = Engagement.create!(title: "Engagement 3 : Autonomie et responsabilisation des collectivités territoriales décentralisées")
      c4  = Engagement.create!(title: "Engagement 4 : L'éducation pour tous")
      c5  = Engagement.create!(title: "Engagement 5 : la santé est un droit inaliénable pour chaque citoyen")
      c6  = Engagement.create!(title: "Engagement 6 : l'emploi décent pour tous")
      c7  = Engagement.create!(title: "Engagement 7 : Promotion de l'habitat et la modernisation de Madagascar (ODD 11,9)")
      c8  = Engagement.create!(title: "Engagement 8 : Le sport et la culture doivent être un tremplin pour porter haut la fierté nationale")
      c12 = Engagement.create!(title: "Engagement 9 : L'énergie et l'eau pour tous")
      c9  = Engagement.create!(title: "Engagement 10 : l'industrialisation de Madagascar ")
      c10 = Engagement.create!(title: "Engagement 11 : L'industrie touristique")
      c11 = Engagement.create!(title: "Engagement 12 : L'autosuffisance alimentaire")
      c13 = Engagement.create!(title: "Engagement 13 : 1a gestion durable et la conservation de nos ressources naturelles")
     
    
puts "Engagement créé"

Pem.destroy_all

      z1 = Pem.create!(title:"PRIORITÉ 1 : Assurer la défense et la sécurité sur l'ensemble du territoire national",engagement_id: 1) 
      z2 = Pem.create!(title:"PRIORITÉ 2 : Garantir une justice équitable, plus accessible et renforcer l'État de droit",engagement_id: 1)
      z3 = Pem.create!(title:"PRIORITÉ 3 : Réconcilier les Malagasy et renforcer la participation citoyenne",engagement_id: 2)
      z4 = Pem.create!(title:"PRI0RITÉ 4 : Améliorer la gouvernance responsable, rationnelle et performante des finances publiques",engagement_id: 2)
      z5 = Pem.create!(title:"PRIORITÉ 5 : Développer l'espace budgétaire et améliorer la qualité des dépenses publiques",engagement_id: 2)
      z6 = Pem.create!(title:"PRIORITÉ 6 : Rationaliser l'administration pour une bonne gouvernance institutionnelle",engagement_id: 3)                   
      z7 = Pem.create!(title:"PRIORITÉ 7 : Instaurer une politique de décentralisation émergente",engagement_id: 3)
      z8 = Pem.create!(title:"PRIORITÉ 8 : En matière de gouvernance foncière et territoriale : structurer Madagascar et faciliter le développement rural",engagement_id: 3)
      z9 = Pem.create!(title:"PRIORITÉ 9 : Offrir une éducation de qualité pour tous",engagement_id: 4)                        
      z10 = Pem.create!(title:"PRIORITÉ 10 : L'Accès aux soins et bien-être social pour tous",engagement_id: 5)
      z11 = Pem.create!(title:"PRIORITÉ 11 : Assurer un service de santé de qualité pour tous et renforcer la planification familiale",engagement_id: 5)
      z12 = Pem.create!(title:"PRIORITÉ 12 : Favoriser la création d'emplois et promouvoir le travail décent",engagement_id: 6)
      z13 = Pem.create!(title:"PRIORITÉ 13 : Promouvoir l'autonomisation des femmes et la protection des droits de l'enfant",engagement_id: 6)
      z14 = Pem.create!(title:"PRIORITÉ 14 : Garantir l'accès à un logement décent pour chaque ménage",engagement_id: 7)
      z15 = Pem.create!(title:"PRIORITÉ 15 : Doter le pays des infrastructures de standing international",engagement_id: 7)
      z16 = Pem.create!(title:"PRIORITÉ 16 : Doter le pays d'infrastructures de transports cohérents à l'émergence",engagement_id: 7)
      z17 = Pem.create!(title:"PRIORITÉ 17 : Promouvoir l'accès au sport et l'épanouissement de la jeunesse",engagement_id: 8)
      z18 = Pem.create!(title:"PRIORITÉ 18 : Promouvoir la culture pour asseoir l'identité culturelle Malagasyengagement_id:",engagement_id: 8)
      z19 = Pem.create!(title:"PRIORITÉ 19 : Renforcer l'Identité Nationale",engagement_id: 8)
      z20 = Pem.create!(title:"PRIORITÉ 20 : Densifier le tissu industriel par l'industrialisation régionale par la mise en place de Zones d'Émergence Industrielles",engagement_id: 10)
      z21 = Pem.create!(title:"PRIORITÉ 21 : Développer l'esprit entrepreneurial et d'innovation",engagement_id: 10)
      z22 = Pem.create!(title:"PRIORITÉ 22 : Rendre Madagascar un acteur de la révolution numérique",engagement_id: 10)
      z23 = Pem.create!(title:"PRIORITÉ 23 : Faire émerger le potentiel minierengagement_id:",engagement_id: 10)
      z24 = Pem.create(title:"PRIORITÉ 24 : Faire émerger le potentiel pétrolier",engagement_id: 10)
      z25 = Pem.create!(title:"PRIORITÉ 25 : Promouvoir l'exploitation et la valorisation durable des espaces touristiques",engagement_id: 11)
      z26 = Pem.create!(title:"PRIORITÉ 26 : Disposer des infrastructures médiatiques et de télécommunication moderne",engagement_id: 11)
      z27 = Pem.create(title:"PRIORITÉ 27 : Faire de Madagascar un grenier de l'Océan Indien avec une agriculture modernisée",engagement_id: 12)
      z28 = Pem.create(title:"PRIORITÉ 28 : Renforcer la production énergétique et l'accès à l'énergie",engagement_id: 9)
      z29 = Pem.create(title:"PRIORITÉ 29 : Garantir l'accès universel à l'eau potable",engagement_id: 9)
      z30 = Pem.create(title:"PRIORITÉ 30 : Préserver les ressources naturelles et l'environnement",engagement_id: 13)
      z31 = Pem.create(title:"PRIORITÉ 31 : Renforcer les résiliences communautaires par l'accès à des informations scientifiques pertinentes sur les risques et catastrophes",engagement_id: 13)
      z32 = Pem.create(title:"PRIORITÉ 32 : S'adapter et atténuer les effets du changement climatique",engagement_id: 13)
      z33 = Pem.create(title:"PRIORITÉ 33 : Valoriser l'économie bleue à Madagascar",engagement_id: 13)


puts "Pem créé"

Ptf.destroy_all


      c1  = Ptf.create!(title: "Helvetas", lien: 'https://www.helvetas.org/fr/madagascar', image_url: "logo/helvetas1.jpg")
      c2  = Ptf.create!(title: "FMI", lien: 'https://www.imf.org/en/Countries/ResRep/MDG', image_url: "logo/imf1.jpg")
      c3  = Ptf.create!(title: "IFC", lien: 'https://www.ifc.org/wps/wcm/connect/region__ext_content/IFC_External_Corporate_Site/Sub-Saharan+Africa', image_url: "logo/ifc1.jpg")
      c4  = Ptf.create!(title: "UE", lien: 'https://eeas.europa.eu/delegations/madagascar_en', image_url: "logo/ue1.jpg")
      c5  = Ptf.create!(title: "UNICEF", lien: 'https://www.unicef.org/madagascar/en', image_url: "logo/unicef1.jpg")
      c6  = Ptf.create!(title: "GIZ", lien: 'https://www.giz.de/en/worldwide/322.html', image_url: "logo/giz11.jpg")
      c7  = Ptf.create!(title: "AFD", lien: 'https://www.afd.fr/en/page-region-pays/madagascar', image_url: "logo/afd11.jpg")
      c8  = Ptf.create!(title: "ONUDI", lien: 'https://www.unido.org/who-we-are-unido-worldwide-africa-offices/madagascar', image_url: "logo/onudi1.jpg")
      c9  = Ptf.create!(title: "JICA", lien: 'https://www.jica.go.jp/madagascar/french/index.html', image_url: "logo/jica1.png")
      c10 = Ptf.create!(title: "USAID", lien: 'https://www.usaid.gov/madagascar', image_url: "logo/USAID1.jpg")
      c11 = Ptf.create!(title: "BAD", lien: 'https://www.afdb.org/en/countries/southern-africa/madagascar', image_url: "logoptf/bad.jpeg")
      c12 = Ptf.create!(title: "PNUD", lien: 'https://www.mg.undp.org/', image_url: "logo/pnud1.jpg")
      c13 = Ptf.create!(title: "FIDA", lien: 'https://www.ifad.org/en/web/operations/country/id/madagascar', image_url: "logoptf/fida.jpeg")
      c14 = Ptf.create!(title: "CNUCED", lien: 'https://unctad.org/en/Pages/Home.aspx', image_url: "logo/cnuced11.jpg")

puts "Ptf Créé"

Filiere.destroy_all
      c1 = Filiere.create!(title: "Grains secs")
      c2 = Filiere.create!(title: "Riz")
      c3 = Filiere.create!(title: "Céréales")
      c4 = Filiere.create!(title: "Vanille")
      c5 = Filiere.create!(title: "Coton")
      c6 = Filiere.create!(title: "Noix")
      c7 = Filiere.create!(title: "Charbon vert")
      c8 = Filiere.create!(title: "Cacao")
      c9 = Filiere.create!(title: "Huiles essentielles")
      c10 = Filiere.create!(title: "Sucre")
      c11 = Filiere.create!(title: "Huile de palme")
      c12 = Filiere.create!(title: "Fruits")
      c13 = Filiere.create!(title: "Epices")
      c14 = Filiere.create!(title: "Apiculture")
      c15 = Filiere.create!(title: "Boviculture")
      c16 = Filiere.create!(title: "Aviculture")
      c17 = Filiere.create!(title: "Légumes")
      c18 = Filiere.create!(title: "Pisciculture")
      c19 = Filiere.create!(title: "Artisanat")
      c20 = Filiere.create!(title: "Produits laitiers")
      c21 = Filiere.create!(title: "Soie sauvage/raphia")
      c22 = Filiere.create!(title: "Industrie textile")
      c23 = Filiere.create!(title: "NTIC")
      c24 = Filiere.create!(title: "Tourisme")
      c25 = Filiere.create!(title: "Agribusiness")
      c26 = Filiere.create!(title: "Infrastructures")
      c27 = Filiere.create!(title: "Exportation")
      c28 = Filiere.create!(title: "Multi-sectorielle")
      c29 = Filiere.create!(title: "Peau de crocodile")
      c30 = Filiere.create!(title: "Cuir")
      c31 = Filiere.create!(title: "Gouvernance locale")
      c32 = Filiere.create!(title: "Commerce")
      c33 = Filiere.create!(title: "Industrie sucrière")
      c34 = Filiere.create!(title: "Hydro agriculture")
      c35 = Filiere.create!(title: "Energie")
      c36 = Filiere.create!(title: "Wash")
      c37 = Filiere.create!(title: "Banque")
      c38 = Filiere.create!(title: "Fond de garantie")
      c39 = Filiere.create!(title: "Microfinance")
      c40 = Filiere.create!(title: "Grandes mines")
     
 puts "Filiere créée"    

Iga.destroy_all
      c1 = Iga.create!(title: "Ministère de l’Energie, de l’Eau et des Hydrocarbures")
      c2 = Iga.create!(title: "Ministère de l'Economie et des Finances")
      c3 = Iga.create!(title: "MICA (Ministère de l’Industrie, du Commerce et de l’Artisanat )")
      c4 = Iga.create!(title: "Ministère de l’Enseignement Supérieur et de la Recherche Scientifique ")
      c5 = Iga.create!(title: "Ministère de l’Agriculture, de l’Elevage et de la Pêche" )
      c6 = Iga.create!(title: "Ministère de l'Economie et des Finances Ministère de l'Aménagement du Territoire,
                      de l Habitat et des Travaux Publics")
      c7 = Iga.create!(title: "Ministère de la Communication et de la Culture" )
      c8 = Iga.create!(title: "Ministère du Tourisme des Transports et de la Météorologie")
      c9 = Iga.create!(title: "Office National du Tourisme de Madagascar")
      c10 =Iga.create!(title: "Ministère de l Environnement" )
      c11 = Iga.create!(title: "MAEP")
      c12 = Iga.create!(title: "EDBM")
      c13 = Iga.create(title: "M2PATE")
      c14 = Iga.create(title: "MIDSP")


puts "iga créé"

Zone.destroy_all
      z24 = Zone.create(title:"National")
      z10 = Zone.create!(title:"Alaotra Mangoro")
      z5 = Zone.create!(title:"Amoron'i Mania")
      z1 = Zone.create!(title:"Analamanga")
      z11 = Zone.create!(title:"Analanjirofo")
      z17 = Zone.create!(title:"Androy")
      z18 = Zone.create!(title:"Anosy")
      z19 = Zone.create!(title:"Atsimo Andrefana")
      z6 = Zone.create!(title:"Atsimo Antsinana")                   
      z12 = Zone.create!(title:"Atsinanana")
      z13 = Zone.create!(title:"Betsiboka")
      z14 = Zone.create!(title:"Boeny")
      z2 = Zone.create!(title:"Bongolava")
      z21 = Zone.create!(title:"Diana")
      z7 = Zone.create!(title:"Haute Matsiatra")
      z9 = Zone.create!(title:"Ihorombe")                        
      z3 = Zone.create!(title:"Itasy")
      z15= Zone.create!(title:"Melaky")
      z20 = Zone.create!(title:"Menabe")
      z22 = Zone.create!(title:"Sava")
      z16 = Zone.create!(title:"Sofia")
      z4 = Zone.create!(title:"Vakinakaratra")
      z8 = Zone.create!(title:"Vatovavy-Fitovinany")






puts "zone créée"



Appui.destroy_all
      a1 = Appui.create!(title:"Prêt")
      a2 = Appui.create!(title:"Don")
      a3 = Appui.create!(title:"Co-financement") 
      a4 = Appui.create!(title:"Assistance Technique") 
      a5 = Appui.create!(title:"Participation aux risques") 
puts "Appui créé"


Beneficiaire.destroy_all
       b1 = Beneficiaire.create!(title:"Douane")
       b2 = Beneficiaire.create!(title:"Ministère
                                  Operateurs Miniers")
       b3 = Beneficiaire.create!(title:"Producteurs Ménages Ruraux")            
                                                                         
       b4 = Beneficiaire.create!(title:"Micro-entreprises Rurales                     
                                  Jeunes")
       b5 = Beneficiaire.create!(title:"Petites Industries Rurales
                                  Secteur-Privé")
       b6 = Beneficiaire.create!(title:"Producteurs")
                                  
       b7 = Beneficiaire.create!(title:"Citoyens Touristes
                                  Secteur-Privé")
                                 
       b8 = Beneficiaire.create!(title:"Institutions de micro-finance")
       b9 = Beneficiaire.create!(title:"Agriculteurs")
       b10 = Beneficiaire.create!(title:"Commerçants")
       b11 = Beneficiaire.create!(title:"Investisseur en agro-industrie")
       b12 = Beneficiaire.create!(title:"Citoyens")
       b13 = Beneficiaire.create!(title: "Secteur-Privé")
       b14 = Beneficiaire.create!(title:"Investisseur privé")
       b15 = Beneficiaire.create(title:"Femmes et Jeunes Entrepreneurs")
       b16 = Beneficiaire.create(title:"Structures Gouvernementales")
       b17 = Beneficiaire.create(title:"EDBM")
       b18 = Beneficiaire.create(title:"Structure intermédiaire")
puts "Beneficiaire créé"

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

              debut_du_projet: "01/01/2019" , fin: "01/01/2024")

              @pro.ptf = Ptf.find(10)
              @pro.appui = Appui.find(1)
              @pro.save
           

                Zoneprojet.create!(projet_id: 1 , zone_id: 2)
                Zoneprojet.create!(projet_id: 1 , zone_id: 18)
                Zoneprojet.create!(projet_id: 1 , zone_id: 23)

                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 10)
                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 11)
                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 12)
                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 13)
                Benefprojet.create!(projet_id: 1 , beneficiaire_id: 14)

                Igaprojet.create!(projet_id: 1 , iga_id: 4)
                Igaprojet.create!(projet_id: 1 , iga_id: 12)
                Igaprojet.create!(projet_id: 1 , iga_id: 13)


                Secteurprojet.create(projet_id: 1 , secteur_id: 10)
                Secteurprojet.create(projet_id: 1 , secteur_id: 11)

puts "projet1"
 

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
              partenaire_d_implementaton: "EDBM",
              debut_du_projet: "01/01/2019", 
              fin: "02/03/2020")

                @pro2.ptf = Ptf.find(11)
                
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


puts "projet2"
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
               
               partenaire_d_implementaton: "
              - Projet PIC
              - Ministère de l’Agriculture,de l’Elevage et de la Pêche
                  " ,
               debut_du_projet: " 2015",
                fin: "2021")

                @pro3.ptf = Ptf.find(13)
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



puts "projet3"

 @pro4 = Projet.new(nom_du_projet: "Formation Professionnelle d'Amélioration de la Production Agricole (FORMAPROD)", 
                   objectif_generale_du_projet: "FORMAPROD vise à revaloriser les métiers de l’agriculture par la 
                                                formation agricole qualifiante des 
                                                jeunes générations en vue d’augmenter significativement la 
                                         productivité des Exploitations Agricoles Familiales (EAF)",
                   aspsp:"Aménagements hydro-agricoles,
                          infrastructures de soutien à la commercialisation et 
                          à la transformation (marché communal, magasins de groupage, etc.),
                          désenclavements des pôles agricoles.",
                   partenaire_d_implementaton: "Administration",
                   debut_du_projet: "01/01/2012", 
                   fin: "01/01/2022")
                   @pro4.ptf = Ptf.find(13)
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


 puts "projet4"

Unite.destroy_all
          Unite.create!(nom: "USD")
          Unite.create!(nom: "EURO")
          Unite.create!(nom: "CRYTOMONAIE")
 puts "Unités créées"


SecteurFiliere.destroy_all

  SecteurFiliere.create!(secteur_id: 6, filiere_id: 1)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 2)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 3)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 4)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 5)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 6)
  SecteurFiliere.create!(secteur_id: 7, filiere_id: 22)
  SecteurFiliere.create!(secteur_id: 7, filiere_id: 23)
  SecteurFiliere.create!(secteur_id: 7, filiere_id: 24)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 28)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 21)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 29)

