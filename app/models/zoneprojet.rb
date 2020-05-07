class Zoneprojet < ApplicationRecord
	belongs_to :zone
	belongs_to :projet, optional: true
	belongs_to :update_projet, optional: true
end
