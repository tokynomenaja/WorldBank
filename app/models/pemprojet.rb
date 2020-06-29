class Pemprojet < ApplicationRecord
	belongs_to :pem
	belongs_to :projet, optional: true
	belongs_to :update_projet, optional: true
end
