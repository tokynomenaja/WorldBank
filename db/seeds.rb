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
      c6 = Secteur.create!(title: "AGROBUSINESS", image_url: "secteur/agribusinness.jpg")
      c7 = Secteur.create!(title: "PROMOTION DES INVESTISSEMENTS", image_url: "secteur/promotion.jpg")
      c8 = Secteur.create!(title: "FINANCES", image_url: "secteur/finance.jpg")
      c9 = Secteur.create!(title: "ENERGIE")

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
      c14 = Ptf.create!(title: "WBG", lien: 'https://www.worldbank.org/', image_url: "logo/cnuced11.jpg")

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
      c41 = Filiere.create!(title: "Mines artisanales")
      c42 = Filiere.create!(title: "Raphia")
     
 puts "Filière créée"    

Iga.destroy_all
      Iga.create!(title: "Ministère de la Défense Nationale")
      Iga.create!(title: "Ministère des Affaires étrangères")
      Iga.create!(title: "Garde des Sceaux, Ministre de la Justice")
      Iga.create!(title: "Ministère de l’Économie et des Finances")
      Iga.create!(title: "Ministère de l’Intérieur et de la Décentralisation")
      Iga.create!(title: "Ministère de la Sécurité Publique")
      Iga.create!(title: "Ministère de l’Aménagement du Territoire, de l’Habitat et des Travaux Publics")
      Iga.create!(title: "Ministère de l’Éducation Nationale et de l’Enseignement Technique et Professionnel")
      Iga.create!(title: "Ministère de la Santé Publique")
      Iga.create!(title: "Ministère de l’Agriculture, de l’Élevage et de la Pêche")
      Iga.create!(title: "Ministère de l’Énergie, de l’Eau et des Hydrocarbures")
      Iga.create!(title: "Ministère des Mines et des Ressources Stratégiques")
      Iga.create!(title: "Ministère des Transports, du Tourisme et de la Météorologie")
      Iga.create!(title: "Ministère du Travail, de l’Emploi, de la Fonction Publique et des Lois Sociales")
      Iga.create!(title: "Ministère de l’Environnement et du Développement Durable")
      Iga.create!(title: "Ministère des Postes, des Télécommunications et du Développement Numérique")
      Iga.create!(title: "Ministère de la Population, de la Protection Sociale et de la Promotion de la Femme")
      Iga.create!(title: "Ministère de la Jeunesse et des Sports")
      Iga.create!(title: "Ministère de la Communication et de la Culture")
      Iga.create!(title: "Ministère de l’Industrie, du Commerce et de l’Artisanat")
      Iga.create!(title: "Ministère de l’Enseignement Supérieur et de la Recherche Scientifique")
      Iga.create!(title: "Ministère auprès de la Présidence en Charge des Projets Présidentiels de l'Aménagement du Territoire et de l'Équipement")
      Iga.create!(title: "Economic Development Board of Madagascar")
      Iga.create!(title: "Office National du Tourisme de Madagascar")
      Iga.create!(title: "Comité Public Privé en charge de la modernisation de la formation dans le secteur du tourisme")
      Iga.create!(title: "Confédération du Tourisme")

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
      z6 = Zone.create!(title:"Atsimo Atsinanana")                   
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
      z4 = Zone.create!(title:"Vakinankaratra")
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
       Beneficiaire.create!(title: "Producteurs")
       Beneficiaire.create!(title: "Intermédiaires")
       Beneficiaire.create!(title: "Secteur Privé")
       Beneficiaire.create!(title: "Citoyens")
       Beneficiaire.create!(title: "Commerçants")
       Beneficiaire.create!(title: "Investisseurs")
       Beneficiaire.create!(title: "PME et Micro-Entreprises")
       Beneficiaire.create!(title: "Jeunes")
       Beneficiaire.create!(title: "Femmes")
       Beneficiaire.create!(title: "Population rurale")
       Beneficiaire.create!(title: "Ministères/Administration/Agences Publiques")
       Beneficiaire.create!(title: "Groupements professionnels et Associations")
       Beneficiaire.create!(title: "Chambres de commerce et d’industrie")
       Beneficiaire.create!(title: "Instituts/Centre de formation/Universités")
       Beneficiaire.create!(title: "Banques et Institutions financières")
puts "Beneficiaire créé"

Unite.destroy_all
          Unite.create!(nom: "USD")
          Unite.create!(nom: "EURO")
          Unite.create!(nom: "UAC")
          Unite.create!(nom: "MGA")
 puts "Unités créées"

Tarif.destroy_all
      Tarif.create(reference: "UAC", valeur: 1.39373,utilise: true, unite_id: 1)
      Tarif.create(reference: "UAC", valeur: 1.21910,utilise: true, unite_id: 2)
      Tarif.create(reference: "UAC", valeur: 4863.04,utilise: true, unite_id: 4)
puts "tarifs créés"

Forme.destroy_all
        Forme.create(title:"Appui à l’entreprenariat")
        Forme.create(title:"Appui au développement des chaines de valeur")
        Forme.create(title:"Appui au financement du secteur privé")
        Forme.create(title:"Renforcement de capacités")
        Forme.create(title:"Etudes, Analyses et/ou Enquêtes")
        Forme.create(title:"Assistance technique")
        Forme.create(title:"Equipement")
        Forme.create(title:"Infrastructure")

        Forme.create(title:"Appui au DPP")
        Forme.create(title:"Appui au cadre PPP")
        Forme.create(title:"Soutien à la promotion des investissements privés")
        Forme.create(title:"Promotion du respect des droits de l'enfant dans les investissements")

        Forme.create(title:"Communication et information")
        Forme.create(title:" Promotion des Exportations")
        Forme.create(title:"Amélioration de l'offre")
        Forme.create(title:"Appui au secteur privé")
        Forme.create(title:"Etude")
        Forme.create(title:"Appui institutionnel")
        Forme.create(title:"Promotion du commerce")
        Forme.create(title:"Facilitation du commerce")
        

        Forme.create(title:"Infrastructures énergétiques")
        Forme.create(title:"Infrastructures agricoles")
        Forme.create(title:"Planification Territoriale")
        Forme.create(title:"Infrastructure portuaire")
        Forme.create(title:"Infrastructures routières")
        Forme.create(title:"Appui aux Associations nationales de fournisseurs d'eau privés")

        Forme.create(title:" Facilitation de l'accès aux financements des PME")
        Forme.create(title:"Appui à l'accès aux microfinances")
        Forme.create(title:"Garantie de prêt partiel")
        Forme.create(title:"Appui au développement de la finance inclusive")

        Forme.create(title:"Appui au secteur électricité")


  SecteurFiliere.destroy_all

  SecteurFiliere.create!(secteur_id: 6, filiere_id: 1)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 2)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 3)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 4)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 5)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 6)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 7)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 8)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 9)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 10)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 11)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 12)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 13)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 14)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 15)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 16)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 17)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 18)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 19)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 20)
  SecteurFiliere.create!(secteur_id: 6, filiere_id: 21)

  SecteurFiliere.create!(secteur_id: 7, filiere_id: 22)
  SecteurFiliere.create!(secteur_id: 7, filiere_id: 23)
  SecteurFiliere.create!(secteur_id: 7, filiere_id: 24)
  SecteurFiliere.create!(secteur_id: 7, filiere_id: 25)
  SecteurFiliere.create!(secteur_id: 7, filiere_id: 26)
  SecteurFiliere.create!(secteur_id: 7, filiere_id: 27)
  SecteurFiliere.create!(secteur_id: 7, filiere_id: 28)

  SecteurFiliere.create!(secteur_id: 2, filiere_id: 28)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 42)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 29)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 25)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 30)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 4)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 13)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 12)
  SecteurFiliere.create!(secteur_id: 2, filiere_id: 17)

  SecteurFiliere.create!(secteur_id: 3, filiere_id: 31)
  SecteurFiliere.create!(secteur_id: 3, filiere_id: 25)
  SecteurFiliere.create!(secteur_id: 3, filiere_id: 32)
  SecteurFiliere.create!(secteur_id: 3, filiere_id: 33)
  SecteurFiliere.create!(secteur_id: 3, filiere_id: 34)
  SecteurFiliere.create!(secteur_id: 3, filiere_id: 35)
  SecteurFiliere.create!(secteur_id: 3, filiere_id: 36)

  SecteurFiliere.create!(secteur_id: 8, filiere_id: 37)
  SecteurFiliere.create!(secteur_id: 8, filiere_id: 38)
  SecteurFiliere.create!(secteur_id: 8, filiere_id: 39)

  SecteurFiliere.create!(secteur_id: 1, filiere_id: 40)
  SecteurFiliere.create!(secteur_id: 1, filiere_id: 41)

  puts "Filières par secteur créées"

  Formesecteur.destroy_all

  Formesecteur.create!(secteur_id: 1, forme_id: 1)
  Formesecteur.create!(secteur_id: 1, forme_id: 2)   
  Formesecteur.create!(secteur_id: 1, forme_id: 3)
  Formesecteur.create!(secteur_id: 1, forme_id: 4)
  Formesecteur.create!(secteur_id: 1, forme_id: 5)
  Formesecteur.create!(secteur_id: 1, forme_id: 6)
  Formesecteur.create!(secteur_id: 1, forme_id: 7)
  Formesecteur.create!(secteur_id: 1, forme_id: 8)
  Formesecteur.create!(secteur_id: 4, forme_id: 1)
  Formesecteur.create!(secteur_id: 4, forme_id: 2)
  Formesecteur.create!(secteur_id: 4, forme_id: 3)
  Formesecteur.create!(secteur_id: 4, forme_id: 4)
  Formesecteur.create!(secteur_id: 4, forme_id: 5)
  Formesecteur.create!(secteur_id: 4, forme_id: 6)
  Formesecteur.create!(secteur_id: 4, forme_id: 7)
  Formesecteur.create!(secteur_id: 4, forme_id: 8)

  Formesecteur.create!(secteur_id: 6, forme_id: 1)
  Formesecteur.create!(secteur_id: 6, forme_id: 2)
  Formesecteur.create!(secteur_id: 6, forme_id: 3)
  Formesecteur.create!(secteur_id: 6, forme_id: 4)
  Formesecteur.create!(secteur_id: 6, forme_id: 5)
  Formesecteur.create!(secteur_id: 6, forme_id: 6)
  Formesecteur.create!(secteur_id: 6, forme_id: 7)
  Formesecteur.create!(secteur_id: 6, forme_id: 8)

  Formesecteur.create!(secteur_id: 2, forme_id: 13)
  Formesecteur.create!(secteur_id: 2, forme_id: 14) 
  Formesecteur.create!(secteur_id: 2, forme_id: 15)
  Formesecteur.create!(secteur_id: 2, forme_id: 16)
  Formesecteur.create!(secteur_id: 2, forme_id: 17) 
  Formesecteur.create!(secteur_id: 2, forme_id: 18)
  Formesecteur.create!(secteur_id: 2, forme_id: 19) 
  Formesecteur.create!(secteur_id: 2, forme_id: 20)
  Formesecteur.create!(secteur_id: 2, forme_id: 21) 
  Formesecteur.create!(secteur_id: 2, forme_id: 4)

  Formesecteur.create!(secteur_id: 3, forme_id: 22)
  Formesecteur.create!(secteur_id: 3, forme_id: 23)
  Formesecteur.create!(secteur_id: 3, forme_id: 24)
  Formesecteur.create!(secteur_id: 3, forme_id: 25)
  Formesecteur.create!(secteur_id: 3, forme_id: 26)
  Formesecteur.create!(secteur_id: 3, forme_id: 27)

  Formesecteur.create!(secteur_id: 7, forme_id: 3)
  Formesecteur.create!(secteur_id: 7, forme_id: 5)
  Formesecteur.create!(secteur_id: 7, forme_id: 9)
  Formesecteur.create!(secteur_id: 7, forme_id: 10)
  Formesecteur.create!(secteur_id: 7, forme_id: 11)
  Formesecteur.create!(secteur_id: 7, forme_id: 12)

  Formesecteur.create!(secteur_id: 8, forme_id: 27)
  Formesecteur.create!(secteur_id: 8, forme_id: 28)
  Formesecteur.create!(secteur_id: 8, forme_id: 29)
  Formesecteur.create!(secteur_id: 8, forme_id: 30)

  Formesecteur.create!(secteur_id: 9, forme_id: 31)

  puts "Formes par secteur créés"

User.destroy_all
  User.create!(first_name: "Admin", last_name: "Admin", email: "admin@gmail.com",phone: "0342145678",is_admin: nil, is_consultant: false, is_super_admin: true,password: "azerty",password_confirmation: "azerty")
  User.create!(first_name: "Bailleur", last_name: "bailleur",email: "bailleur@gmail.com", phone: "0342145645",is_admin: nil, is_consultant: false, is_super_admin: false,password: "azerty",password_confirmation: "azerty")
  User.create!(first_name: "Consultant", last_name: "consultant",email: "consultant@gmail.com", phone: "0342845678",is_admin: nil, is_consultant: true, is_super_admin: false,password: "azerty",password_confirmation: "azerty")



