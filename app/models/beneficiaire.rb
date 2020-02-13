class Beneficiaire < ApplicationRecord
	has_many :benefprojets
	has_many :projets, through: :benefprojets
end
