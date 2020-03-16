class Message < ApplicationRecord
	belongs_to :sender, class_name: 'User'
	belongs_to :admin, class_name: 'User'

end
