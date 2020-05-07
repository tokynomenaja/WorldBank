class Secteurprojet < ApplicationRecord
	belongs_to :projet
	belongs_to :secteur
	belongs_to :update_projet, optional: true
end
