class Benefprojet < ApplicationRecord
	belongs_to :projet, optional: true
	belongs_to :beneficiaire
	belongs_to :update_projet, optional: true
end
