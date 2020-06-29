class Pem < ApplicationRecord
	belongs_to :engagement

	has_many :pemprojets
	has_many :projets, through: :pemprojets

	has_many :pemprojets
	has_many :update_projets, through: :pemprojets

end
