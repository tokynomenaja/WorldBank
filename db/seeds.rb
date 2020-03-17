# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
   
Secteur.destroy_all

      c1 = Secteur.create!(title: "INDUSTRIE EXTRACTIVE", image_url: "secteur/extractive.jpg")
      c2 = Secteur.create!(title: "COMMERCE", image_url: "secteur/commerce.jpg")   
      c3 = Secteur.create!(title: "INFRASTRUCTURES", image_url: "secteur/infrastructure.jpg")
      c4 = Secteur.create!(title: "TOURISME")   
      c5 = Secteur.create!(title: "ENTREPREUNARIAT")
      c7 = Secteur.create!(title: "AGROBUSINESS", image_url: "secteur/agribusinness.jpg")
      c8 = Secteur.create!(title: "PROMOTION DES INVESTISSEMENTS", image_url: "secteur/promotion.jpg")
      c9 = Secteur.create!(title: "FINANCES", image_url: "secteur/finance.jpg")
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
      c9  = Ptf.create!(title: "JICA", lien: 'https://www.jica.go.jp/madagascar/french/index.html', image_url: "logo/JICA.jpg")
      c10 = Ptf.create!(title: "USAID", lien: 'https://www.usaid.gov/madagascar', image_url: "logo/USAID1.jpg")
      c11 = Ptf.create!(title: "BAD", lien: 'https://www.afdb.org/en/countries/southern-africa/madagascar', image_url: "logo/BAD.jpg")
      c12 = Ptf.create!(title: "PNUD", lien: 'https://www.mg.undp.org/', image_url: "logo/pnud1.jpg")
      c13 = Ptf.create!(title: "FIDA", lien: 'https://www.ifad.org/en/web/operations/country/id/madagascar', image_url: "logo/FIDA.jpg")
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

Unite.destroy_all
          Unite.create!(nom: "USD")
          Unite.create!(nom: "EURO")
          Unite.create!(nom: "UAC")
          Unite.create!(nom: "MGA")
 puts "Unités créées"

Tarif.destroy_all
      Tarif.create(reference: "UAC", valeur: 1.39373, unite_id: 1)
      Tarif.create(reference: "UAC", valeur: 1.21910, unite_id: 2)
      Tarif.create(reference: "UAC", valeur: 4863.04, unite_id: 4)
puts "tarifs créés"

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



User.destroy_all
  User.create!(first_name: "Admin", last_name: "Admin", email: "admin@gmail.com",phone: "0342145678",is_admin: nil, is_consultant: false, is_super_admin: true,password: "azerty",password_confirmation: "azerty")
  User.create!(first_name: "Bailleur", last_name: "bailleur",email: "bailleur@gmail.com", phone: "0342145645",is_admin: false, is_consultant: false, is_super_admin: false,password: "azerty",password_confirmation: "azerty")
  User.create!(first_name: "Consultant", last_name: "consultant",email: "consultant@gmail.com", phone: "0342845678",is_admin: nil, is_consultant: true, is_super_admin: false,password: "azerty",password_confirmation: "azerty")

