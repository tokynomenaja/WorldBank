class Montant < ApplicationRecord
	belongs_to :projet
	belongs_to :unite
	belongs_to :secteur

end
