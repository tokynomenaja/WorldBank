class Secteur < ApplicationRecord
	has_many :secteurprojets 
	has_many :projets, through: :secteurprojets

	has_many :secteurfilieres
	has_many :filieres, through: :secteurfilieres

	has_many :montants


end
