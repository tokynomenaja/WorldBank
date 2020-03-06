class Filiere < ApplicationRecord
	has_many :filiereprojets
	has_many :projets, through: :filiereprojets

	has_many :secteurfilieres
	has_many :secteurs, through: :secteurfilieres
end
