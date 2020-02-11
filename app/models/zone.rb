class Zone < ApplicationRecord
	has_many :zoneprojets
	has_many :projets, through: :zoneprojets
end
