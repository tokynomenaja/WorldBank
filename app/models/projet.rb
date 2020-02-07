class Projet < ApplicationRecord
        belongs_to :user, optional: true
        has_many :secteurprojets 
        has_many :secteurs, through: :secteurprojets
       

end
