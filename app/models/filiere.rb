class Filiere < ApplicationRecord
	has_many :filiereprojets
	has_many :projets, through: :filiereprojets

	has_many :secteur_filieres
	has_many :secteurs, through: :secteur_filieres
end
