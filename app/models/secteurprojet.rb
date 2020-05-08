class Secteurprojet < ApplicationRecord
	belongs_to :projet,optional: true
	belongs_to :secteur
	belongs_to :update_projet, optional: true
end
