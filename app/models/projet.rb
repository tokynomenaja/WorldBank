class Projet < ApplicationRecord
        belongs_to :user, optional: true
        belongs_to :ptf
        has_many :secteurprojets 
        has_many :secteurs, through: :secteurprojets
       

end
