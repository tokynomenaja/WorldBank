class Montant < ApplicationRecord
	belongs_to :unite
	belongs_to :secteur
	belongs_to :projet, optional: true
	belongs_to :update_projet, optional: true

end
