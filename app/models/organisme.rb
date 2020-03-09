class Organisme < ApplicationRecord
	belongs_to :ptf, optional: true
	belongs_to :iga, optional: true
	belongs_to :user

end
