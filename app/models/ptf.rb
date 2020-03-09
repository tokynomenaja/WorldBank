class Ptf < ApplicationRecord
	has_many :projets
	has_many :users
	has_many :users, through: :organismes
end
