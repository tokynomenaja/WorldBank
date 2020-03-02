class Pem < ApplicationRecord
	belongs_to :engagement

	has_many :pemprojets
	has_many :projets, through: :pemprojets

end
