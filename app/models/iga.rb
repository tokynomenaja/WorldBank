class Iga < ApplicationRecord
	has_many :Igaprojets
	has_many :projets, through: :Igaprojets

	has_many :Igaprojets
	has_many :update_projets, through: :Igaprojets

	has_many :users
	has_many :users, through: :organismes
end
