class Igaprojet < ApplicationRecord
	belongs_to :iga
	belongs_to :projet, optional: true
	belongs_to :update_projet, optional: true
end
