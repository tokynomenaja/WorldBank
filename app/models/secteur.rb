class Secteur < ApplicationRecord
	has_many :secteurprojets 
	has_many :projets, through: :secteurprojets

	has_many :secteurfilieres
	has_many :filieres, through: :secteurfilieres

	belongs_to :montant, optional: true


end
