class Montant < ApplicationRecord
	belongs_to :secteur
	belongs_to :projet
	belongs_to :unite
end
