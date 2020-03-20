class Partenaire < ApplicationRecord
	has_many :partenaireprojets
	has_many :projets, through: :partenaireprojets
end
