class Iga < ApplicationRecord
	has_many :Igaprojets
	has_many :projets, through: :Igaprojets
end
