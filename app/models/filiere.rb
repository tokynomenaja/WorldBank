class Filiere < ApplicationRecord
	has_many :filiereprojets
	has_many :projets, through: :filiereprojets
end
