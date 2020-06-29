# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
   
Secteur.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('secteurs')

      Secteur.create(title: "INDUSTRIE EXTRACTIVE", image_url: "secteur/extractive.jpg")
      Secteur.create(title: "COMMERCE", image_url: "secteur/commerce.jpg")   
      Secteur.create(title: "INFRASTRUCTURES", image_url: "secteur/infrastructure.jpg")
      Secteur.create(title: "TOURISME", image_url:"secteur/back.jpg")   
      Secteur.create(title: "ENTREPREUNARIAT", image_url: "secteur/entrepreunariat.jpg")
      Secteur.create(title: "AGROBUSINESS", image_url: "secteur/agribusinness.jpg")
      Secteur.create(title: "PROMOTION DES INVESTISSEMENTS", image_url: "secteur/promotion.jpg")
      Secteur.create(title: "FINANCES", image_url: "secteur/finance.jpg")
      Secteur.create(title: "ENERGIE", image_url: "secteur/extractive.jpg")

puts "Secteur créée"


Engagement.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('engagements')

     Engagement.create!(title: "Engagement 1 : La paix et la sécurité")
     Engagement.create!(title: "Engagement 2 : Lutte contre la corruption avec tolérance zéro")
     Engagement.create!(title: "Engagement 3 : Autonomie et responsabilisation des collectivités territoriales décentralisées")
     Engagement.create!(title: "Engagement 4 : L'éducation pour tous")
     Engagement.create!(title: "Engagement 5 : la santé est un droit inaliénable pour chaque citoyen")
     Engagement.create!(title: "Engagement 6 : l'emploi décent pour tous")
     Engagement.create!(title: "Engagement 7 : Promotion de l'habitat et la modernisation de Madagascar (ODD 11,9)")
     Engagement.create!(title: "Engagement 8 : Le sport et la culture doivent être un tremplin pour porter haut la fierté nationale")
      Engagement.create!(title: "Engagement 9 : L'énergie et l'eau pour tous")
      Engagement.create!(title: "Engagement 10 : l'industrialisation de Madagascar ")
     Engagement.create!(title: "Engagement 11 : L'industrie touristique")
     Engagement.create!(title: "Engagement 12 : L'autosuffisance alimentaire")
     Engagement.create!(title: "Engagement 13 : 1a gestion durable et la conservation de nos ressources naturelles")
     
    
puts "Engagement créé"

Pem.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('pems')

          Pem.create(title:"PRIORITÉ 1 : Assurer la défense et la sécurité sur l'ensemble du territoire national",engagement_id: 1) 
          Pem.create(title:"PRIORITÉ 2 : Garantir une justice équitable, plus accessible et renforcer l'État de droit",engagement_id: 1)
          Pem.create(title:"PRIORITÉ 3 : Réconcilier les Malagasy et renforcer la participation citoyenne",engagement_id: 2)
          Pem.create(title:"PRI0RITÉ 4 : Améliorer la gouvernance responsable, rationnelle et performante des finances publiques",engagement_id: 2)
          Pem.create(title:"PRIORITÉ 5 : Développer l'espace budgétaire et améliorer la qualité des dépenses publiques",engagement_id: 2)
          Pem.create(title:"PRIORITÉ 6 : Rationaliser l'administration pour une bonne gouvernance institutionnelle",engagement_id: 3)                   
          Pem.create(title:"PRIORITÉ 7 : Instaurer une politique de décentralisation émergente",engagement_id: 3)
          Pem.create(title:"PRIORITÉ 8 : En matière de gouvernance foncière et territoriale : structurer Madagascar et faciliter le développement rural",engagement_id: 3)
          Pem.create(title:"PRIORITÉ 9 : Offrir une éducation de qualité pour tous",engagement_id: 4)                        
          Pem.create(title:"PRIORITÉ 10 : L'Accès aux soins et bien-être social pour tous",engagement_id: 5)
          Pem.create(title:"PRIORITÉ 11 : Assurer un service de santé de qualité pour tous et renforcer la planification familiale",engagement_id: 5)
          Pem.create(title:"PRIORITÉ 12 : Favoriser la création d'emplois et promouvoir le travail décent",engagement_id: 6)
          Pem.create(title:"PRIORITÉ 13 : Promouvoir l'autonomisation des femmes et la protection des droits de l'enfant",engagement_id: 6)
          Pem.create(title:"PRIORITÉ 14 : Garantir l'accès à un logement décent pour chaque ménage",engagement_id: 7)
          Pem.create(title:"PRIORITÉ 15 : Doter le pays des infrastructures de standing international",engagement_id: 7)
          Pem.create(title:"PRIORITÉ 16 : Doter le pays d'infrastructures de transports cohérents à l'émergence",engagement_id: 7)
          Pem.create(title:"PRIORITÉ 17 : Promouvoir l'accès au sport et l'épanouissement de la jeunesse",engagement_id: 8)
          Pem.create(title:"PRIORITÉ 18 : Promouvoir la culture pour asseoir l'identité culturelle Malagasy",engagement_id: 8)
          Pem.create(title:"PRIORITÉ 19 : Renforcer l'Identité Nationale",engagement_id: 8)
          Pem.create(title:"PRIORITÉ 20 : Densifier le tissu industriel par l'industrialisation régionale par la mise en place de Zones d'Émergence Industrielles",engagement_id: 10)
          Pem.create(title:"PRIORITÉ 21 : Développer l'esprit entrepreneurial et d'innovation",engagement_id: 10)
          Pem.create(title:"PRIORITÉ 22 : Rendre Madagascar un acteur de la révolution numérique",engagement_id: 10)
          Pem.create(title:"PRIORITÉ 23 : Faire émerger le potentiel minierengagement_id:",engagement_id: 10)
          Pem.create(title:"PRIORITÉ 24 : Faire émerger le potentiel pétrolier",engagement_id: 10)
          Pem.create(title:"PRIORITÉ 25 : Promouvoir l'exploitation et la valorisation durable des espaces touristiques",engagement_id: 11)
          Pem.create(title:"PRIORITÉ 26 : Disposer des infrastructures médiatiques et de télécommunication moderne",engagement_id: 11)
          Pem.create(title:"PRIORITÉ 27 : Faire de Madagascar un grenier de l'Océan Indien avec une agriculture modernisée",engagement_id: 12)
          Pem.create(title:"PRIORITÉ 28 : Renforcer la production énergétique et l'accès à l'énergie",engagement_id: 9)
          Pem.create(title:"PRIORITÉ 29 : Garantir l'accès universel à l'eau potable",engagement_id: 9)
          Pem.create(title:"PRIORITÉ 30 : Préserver les ressources naturelles et l'environnement",engagement_id: 13)
          Pem.create(title:"PRIORITÉ 31 : Renforcer les résiliences communautaires par l'accès à des informations scientifiques pertinentes sur les risques et catastrophes",engagement_id: 13)
          Pem.create(title:"PRIORITÉ 32 : S'adapter et atténuer les effets du changement climatique",engagement_id: 13)
          Pem.create(title:"PRIORITÉ 33 : Valoriser l'économie bleue à Madagascar",engagement_id: 13)


puts "Pem créé"

Ptf.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('ptfs')

      Ptf.create!(title: "Helvetas", lien: 'https://www.helvetas.org/fr/madagascar', image_url: "logo/helvetas1.png")
      Ptf.create!(title: "FMI", lien: 'https://www.imf.org/en/Countries/ResRep/MDG', image_url: "logo/imf1.png")
      Ptf.create!(title: "IFC", lien: 'https://www.ifc.org/wps/wcm/connect/region__ext_content/IFC_External_Corporate_Site/Sub-Saharan+Africa', image_url: "logo/ifc1.png")
      Ptf.create!(title: "UE", lien: 'https://eeas.europa.eu/delegations/madagascar_en', image_url: "logo/ue1.png")
      Ptf.create!(title: "UNICEF", lien: 'https://www.unicef.org/madagascar/en', image_url: "logo/unicef1.png")
      Ptf.create!(title: "GIZ", lien: 'https://www.giz.de/en/worldwide/322.html', image_url: "logo/giz11.png")
      Ptf.create!(title: "AFD", lien: 'https://www.afd.fr/en/page-region-pays/madagascar', image_url: "logo/afd11.png")
      Ptf.create!(title: "ONUDI", lien: 'https://www.unido.org/who-we-are-unido-worldwide-africa-offices/madagascar', image_url: "logo/onudi1.png")
      Ptf.create!(title: "JICA", lien: 'https://www.jica.go.jp/madagascar/french/index.html', image_url: "logo/JICA.png")
      Ptf.create!(title: "USAID", lien: 'https://www.usaid.gov/madagascar', image_url: "logo/USAID1.png")
      Ptf.create!(title: "BAD", lien: 'https://www.afdb.org/en/countries/southern-africa/madagascar', image_url: "logo/BAD.png")
      Ptf.create!(title: "PNUD", lien: 'https://www.mg.undp.org/', image_url: "logo/pnud1.png")
      Ptf.create!(title: "FIDA", lien: 'https://www.ifad.org/en/web/operations/country/id/madagascar', image_url: "logo/FIDA.png")
      Ptf.create!(title: "CNUCED", lien: 'https://unctad.org/en/Pages/Home.aspx', image_url: "logo/cnuced11.png")
      Ptf.create!(title: "WBG", lien: 'https://www.worldbank.org/', image_url: "logo/wbg.png")



puts "Ptf Créé"

Filiere.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('filieres')
      Filiere.create!(title: "Grains secs")
      Filiere.create!(title: "Riz")
      Filiere.create!(title: "Céréales")
      Filiere.create!(title: "Vanille")
      Filiere.create!(title: "Coton")
      Filiere.create!(title: "Noix")
      Filiere.create!(title: "Charbon vert")
      Filiere.create!(title: "Cacao")
      Filiere.create!(title: "Huiles essentielles")
      Filiere.create!(title: "Sucre")
      Filiere.create!(title: "Huile de palme")
      Filiere.create!(title: "Fruits")
      Filiere.create!(title: "Epices")
      Filiere.create!(title: "Apiculture")
      Filiere.create!(title: "Boviculture")
      Filiere.create!(title: "Aviculture")
      Filiere.create!(title: "Légumes")
      Filiere.create!(title: "Pisciculture")
      Filiere.create!(title: "Artisanat")
      Filiere.create!(title: "Produits laitiers")
      Filiere.create!(title: "Soie sauvage/raphia")
      Filiere.create!(title: "Industrie textile")
      Filiere.create!(title: "NTIC")
      Filiere.create!(title: "Tourisme")
      Filiere.create!(title: "Agribusiness")
      Filiere.create!(title: "Infrastructures")
      Filiere.create!(title: "Exportation")
      Filiere.create!(title: "Multi-sectorielle")
      Filiere.create!(title: "Peau de crocodile")
      Filiere.create!(title: "Cuir")
      Filiere.create!(title: "Gouvernance locale")
      Filiere.create!(title: "Commerce")
      Filiere.create!(title: "Industrie sucrière")
      Filiere.create!(title: "Hydro agriculture")
      Filiere.create!(title: "Energie")
      Filiere.create!(title: "Wash")
      Filiere.create!(title: "Banque")
      Filiere.create!(title: "Fond de garantie")
      Filiere.create!(title: "Microfinance")
      Filiere.create!(title: "Grandes mines")
      Filiere.create!(title: "Mines artisanales")
      Filiere.create!(title: "Raphia")
     
 puts "Filière créée"    

Iga.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('igas')

      Iga.create!(title: "Garde des Sceaux, Ministre de la Justice")
      Iga.create!(title: "Ministère auprès de la Présidence en Charge des Projets Présidentiels de l'Aménagement du Territoire et de l'Équipement")
      Iga.create!(title: "Ministère de la Communication et de la Culture")
      Iga.create!(title: "Ministère de la Défense Nationale")
      Iga.create!(title: "Ministère de l’Agriculture, de l’Élevage et de la Pêche")
      Iga.create!(title: "Ministère de la Jeunesse et des Sports")
      Iga.create!(title: "Ministère de l’Aménagement du Territoire, de l’Habitat et des Travaux Publics")
      Iga.create!(title: "Ministère de la Population, de la Protection Sociale et de la Promotion de la Femme")
      Iga.create!(title: "Ministère de la Santé Publique")
      Iga.create!(title: "Ministère de la Sécurité Publique")
      Iga.create!(title: "Ministère de l’Économie et des Finances")
      Iga.create!(title: "Ministère de l’Éducation Nationale et de l’Enseignement Technique et Professionnel")
      Iga.create!(title: "Ministère de l’Énergie, de l’Eau et des Hydrocarbures")
      Iga.create!(title: "Ministère de l’Enseignement Supérieur et de la Recherche Scientifique")
      Iga.create!(title: "Ministère de l’Environnement et du Développement Durable")
      Iga.create!(title: "Ministère de l’Industrie, du Commerce et de l’Artisanat")
      Iga.create!(title: "Ministère de l’Intérieur et de la Décentralisation")
      Iga.create!(title: "Ministère des Affaires étrangères")
      Iga.create!(title: "Ministère des Mines et des Ressources Stratégiques")
      Iga.create!(title: "Ministère des Postes, des Télécommunications et du Développement Numérique")
      Iga.create!(title: "Ministère des Transports, du Tourisme et de la Météorologie")
      Iga.create!(title: "Ministère du Travail, de l’Emploi, de la Fonction Publique et des Lois Sociales")
      Iga.create!(title: "Comité Public Privé en charge de la modernisation de la formation dans le secteur du tourisme")
      Iga.create!(title: "Confédération du Tourisme")
      Iga.create!(title: "Economic Development Board of Madagascar")
      Iga.create!(title: "Office National du Tourisme de Madagascar")

puts "iga créé"

Zone.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('zones')

      Zone.create(title:"Nationaux")
      Zone.create!(title:"Alaotra Mangoro")
      Zone.create!(title:"Amoron'i Mania")
      Zone.create!(title:"Analamanga")
      Zone.create!(title:"Analanjirofo")
      Zone.create!(title:"Androy")
      Zone.create!(title:"Anosy")
      Zone.create!(title:"Atsimo Andrefana")
      Zone.create!(title:"Atsimo Atsinanana")                   
      Zone.create!(title:"Atsinanana")
      Zone.create!(title:"Betsiboka")
      Zone.create!(title:"Boeny")
      Zone.create!(title:"Bongolava")
      Zone.create!(title:"Diana")
      Zone.create!(title:"Haute Matsiatra")
      Zone.create!(title:"Ihorombe")                        
      Zone.create!(title:"Itasy")
      Zone.create!(title:"Melaky")
      Zone.create!(title:"Menabe")
      Zone.create!(title:"Sava")
      Zone.create!(title:"Sofia")
      Zone.create!(title:"Vakinankaratra")
      Zone.create!(title:"Vatovavy-Fitovinany")
puts "zone créée"

Appui.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('appuis')

      Appui.create!(title:"Prêt")
      Appui.create!(title:"Don")
      Appui.create!(title:"Co-financement") 
      Appui.create!(title:"Assistance Technique") 
      Appui.create!(title:"Participation aux risques") 
puts "Appui créé"

Beneficiaire.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('beneficiaires')

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
ActiveRecord::Base.connection.reset_pk_sequence!('unites')
          Unite.create!(nom: "USD")
          Unite.create!(nom: "EURO")
          Unite.create!(nom: "UAC")
          Unite.create!(nom: "MGA")
 puts "Unités créées"

Tarif.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('tarifs')
      Tarif.create(reference: "UAC", valeur: 1.39373,utilise: true, unite_id: 1)
      Tarif.create(reference: "UAC", valeur: 1.21910,utilise: true, unite_id: 2)
      Tarif.create(reference: "UAC", valeur: 4863.04,utilise: true, unite_id: 4)
puts "tarifs créés"

Forme.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('formes')
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


  
  # ids = SecteurFiliere.order('id ASC').limit(49)
  # SecteurFiliere.where(id: ids).delete_all

  # SecteurFiliere.where(:id => 1..49).destroy_all
  SecteurFiliere.destroy_all
  ActiveRecord::Base.connection.reset_pk_sequence!('secteur_filieres')

  SecteurFiliere.create(secteur_id: 6, filiere_id: 1)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 2)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 3)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 4)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 5)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 6)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 7)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 8)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 9)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 10)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 11)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 12)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 13)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 14)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 15)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 16)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 17)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 18)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 19)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 20)
  SecteurFiliere.create(secteur_id: 6, filiere_id: 21)

  SecteurFiliere.create(secteur_id: 7, filiere_id: 22)
  SecteurFiliere.create(secteur_id: 7, filiere_id: 23)
  SecteurFiliere.create(secteur_id: 7, filiere_id: 24)
  SecteurFiliere.create(secteur_id: 7, filiere_id: 25)
  SecteurFiliere.create(secteur_id: 7, filiere_id: 26)
  SecteurFiliere.create(secteur_id: 7, filiere_id: 27)
  SecteurFiliere.create(secteur_id: 7, filiere_id: 28)

  SecteurFiliere.create(secteur_id: 2, filiere_id: 28)
  SecteurFiliere.create(secteur_id: 2, filiere_id: 42)
  SecteurFiliere.create(secteur_id: 2, filiere_id: 29)
  SecteurFiliere.create(secteur_id: 2, filiere_id: 25)
  SecteurFiliere.create(secteur_id: 2, filiere_id: 30)
  SecteurFiliere.create(secteur_id: 2, filiere_id: 4)
  SecteurFiliere.create(secteur_id: 2, filiere_id: 13)
  SecteurFiliere.create(secteur_id: 2, filiere_id: 12)
  SecteurFiliere.create(secteur_id: 2, filiere_id: 17)

  SecteurFiliere.create(secteur_id: 3, filiere_id: 31)
  SecteurFiliere.create(secteur_id: 3, filiere_id: 25)
  SecteurFiliere.create(secteur_id: 3, filiere_id: 32)
  SecteurFiliere.create(secteur_id: 3, filiere_id: 33)
  SecteurFiliere.create(secteur_id: 3, filiere_id: 34)
  SecteurFiliere.create(secteur_id: 3, filiere_id: 35)
  SecteurFiliere.create(secteur_id: 3, filiere_id: 36)

  SecteurFiliere.create(secteur_id: 8, filiere_id: 37)
  SecteurFiliere.create(secteur_id: 8, filiere_id: 38)
  SecteurFiliere.create(secteur_id: 8, filiere_id: 39)

  SecteurFiliere.create(secteur_id: 1, filiere_id: 40)
  SecteurFiliere.create(secteur_id: 1, filiere_id: 41)

  puts "Filières par secteur créées"

  # idss = Formesecteur.order('id ASC').limit(51)
  # Formesecteur.where(id: idss).delete_all

  # Formesecteur.where(:id => 1..51).destroy_all
  Formesecteur.destroy_all
  ActiveRecord::Base.connection.reset_pk_sequence!('formesecteurs')


  Formesecteur.create(secteur_id: 1, forme_id: 1)
  Formesecteur.create(secteur_id: 1, forme_id: 2)   
  Formesecteur.create(secteur_id: 1, forme_id: 3)
  Formesecteur.create(secteur_id: 1, forme_id: 4)
  Formesecteur.create(secteur_id: 1, forme_id: 5)
  Formesecteur.create(secteur_id: 1, forme_id: 6)
  Formesecteur.create(secteur_id: 1, forme_id: 7)
  Formesecteur.create(secteur_id: 1, forme_id: 8)
  Formesecteur.create(secteur_id: 4, forme_id: 1)
  Formesecteur.create(secteur_id: 4, forme_id: 2)
  Formesecteur.create(secteur_id: 4, forme_id: 3)
  Formesecteur.create(secteur_id: 4, forme_id: 4)
  Formesecteur.create(secteur_id: 4, forme_id: 5)
  Formesecteur.create(secteur_id: 4, forme_id: 6)
  Formesecteur.create(secteur_id: 4, forme_id: 7)
  Formesecteur.create(secteur_id: 4, forme_id: 8)

  Formesecteur.create(secteur_id: 6, forme_id: 1)
  Formesecteur.create(secteur_id: 6, forme_id: 2)
  Formesecteur.create(secteur_id: 6, forme_id: 3)
  Formesecteur.create(secteur_id: 6, forme_id: 4)
  Formesecteur.create(secteur_id: 6, forme_id: 5)
  Formesecteur.create(secteur_id: 6, forme_id: 6)
  Formesecteur.create(secteur_id: 6, forme_id: 7)
  Formesecteur.create(secteur_id: 6, forme_id: 8)

  Formesecteur.create(secteur_id: 2, forme_id: 13)
  Formesecteur.create(secteur_id: 2, forme_id: 14) 
  Formesecteur.create(secteur_id: 2, forme_id: 15)
  Formesecteur.create(secteur_id: 2, forme_id: 16)
  Formesecteur.create(secteur_id: 2, forme_id: 17) 
  Formesecteur.create(secteur_id: 2, forme_id: 18)
  Formesecteur.create(secteur_id: 2, forme_id: 19) 
  Formesecteur.create(secteur_id: 2, forme_id: 20)
  Formesecteur.create(secteur_id: 2, forme_id: 4)
  Formesecteur.create(secteur_id: 2, forme_id: 8)

  Formesecteur.create(secteur_id: 3, forme_id: 21)
  Formesecteur.create(secteur_id: 3, forme_id: 22)
  Formesecteur.create(secteur_id: 3, forme_id: 23)
  Formesecteur.create(secteur_id: 3, forme_id: 24)
  Formesecteur.create(secteur_id: 3, forme_id: 25)
  Formesecteur.create(secteur_id: 3, forme_id: 26)
 
  Formesecteur.create(secteur_id: 7, forme_id: 3)
  Formesecteur.create(secteur_id: 7, forme_id: 5)
  Formesecteur.create(secteur_id: 7, forme_id: 9)
  Formesecteur.create(secteur_id: 7, forme_id: 10)
  Formesecteur.create(secteur_id: 7, forme_id: 11)
  Formesecteur.create(secteur_id: 7, forme_id: 12)

  Formesecteur.create(secteur_id: 8, forme_id: 27)
  Formesecteur.create(secteur_id: 8, forme_id: 28)
  Formesecteur.create(secteur_id: 8, forme_id: 29)
  Formesecteur.create(secteur_id: 8, forme_id: 30)

  Formesecteur.create(secteur_id: 9, forme_id: 31)

  puts "Formes par secteur créés"


User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')

  User.create!(first_name: "Admin", last_name: "Admin", email: "admin@gmail.com",phone: "0342145678",is_admin: nil, is_consultant: false, is_super_admin: true,password: "azerty",password_confirmation: "azerty",is_signed_in: false)
  User.create!(first_name: "Bailleur", last_name: "bailleur",email: "bailleur@gmail.com", phone: "0342145645",is_admin: nil, is_consultant: false, is_super_admin: false,password: "azerty",password_confirmation: "azerty",is_signed_in: false)
  User.create!(first_name: "Consultant", last_name: "consultant",email: "consultant@gmail.com", phone: "0342845678",is_admin: nil, is_consultant: true, is_super_admin: false,password: "azerty",password_confirmation: "azerty",is_signed_in: false)



