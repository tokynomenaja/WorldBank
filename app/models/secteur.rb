class Secteur < ApplicationRecord
	has_many :secteurprojets 
	has_many :projets, through: :secteurprojets

	has_many :secteur_filieres
	has_many :filieres, through: :secteur_filieres

	has_many :formesecteurs
	has_many :formes, through: :formesecteurs
	
	has_many :montants


end
