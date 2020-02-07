class Secteur < ApplicationRecord
	has_many :secteurprojets 
	has_many :projets, through: :secteurprojets
end
