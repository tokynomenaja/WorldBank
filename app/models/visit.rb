class Visit < ApplicationRecord
	belongs_to :user, optional: true, class_name: 'User'

	after_create :total_time

	def total_time
		self.updated_at - self.created_at
	end
end
