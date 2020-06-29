class Formeprojet < ApplicationRecord
	belongs_to :forme 
	belongs_to :projet, optional: true
	belongs_to :update_projet, optional: true
end
