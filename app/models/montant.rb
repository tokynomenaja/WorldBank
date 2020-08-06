class Montant < ApplicationRecord
	belongs_to :unite, optional: true
	belongs_to :secteur, optional: true
	belongs_to :projet, optional: true
	belongs_to :update_projet, optional: true

end
