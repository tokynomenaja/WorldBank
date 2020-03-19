class Forme < ApplicationRecord
	has_many :formesecteurs
	has_many :secteurs, through: :formesecteurs

	has_many :formeprojets
	has_many :projets, through: :formeprojets
end
