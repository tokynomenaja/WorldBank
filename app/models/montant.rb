class Montant < ApplicationRecord
	has_many :secteurs
	belongs_to :unite, optional: true
end
