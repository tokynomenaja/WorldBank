class Beneficiaire < ApplicationRecord
	has_many :benefprojets
	has_many :projets, through: :benefprojets

	has_many :benefprojets
	has_many :update_projets, through: :benefprojets
end
