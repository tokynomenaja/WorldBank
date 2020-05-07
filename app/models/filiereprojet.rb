class Filiereprojet < ApplicationRecord
	belongs_to :projet, optional: true
	belongs_to :filiere
	belongs_to :update_projet, optional: true
end
