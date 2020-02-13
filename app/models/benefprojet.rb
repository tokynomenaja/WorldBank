class Benefprojet < ApplicationRecord
	belongs_to :projet
	belongs_to :beneficiaire
end
