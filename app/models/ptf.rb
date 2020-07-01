class Ptf < ApplicationRecord
	has_many :projets
	has_many :users
	has_many :users, through: :organismes
	has_many :messages
	has_many :messages, through: :organismecontacts
end
