class Forme < ApplicationRecord
	has_many :formesecteurs
	has_many :secteurs, through: :formesecteurs
end
