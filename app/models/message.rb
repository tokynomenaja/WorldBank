class Message < ApplicationRecord
	belongs_to :sender, class_name: 'User', optional: true
	belongs_to :admin, class_name: 'User', optional: true
	has_one :organisme

end
