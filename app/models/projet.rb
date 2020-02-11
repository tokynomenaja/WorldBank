class Projet < ApplicationRecord
        belongs_to :user, optional: true
        belongs_to :ptf, optional: true
        belongs_to :montant, optional: true
        has_many :zoneprojets
        has_many :zone, through: :zoneprojets
        has_many :igaprojets
        has_many :iga, through: :igaprojets
        has_many :filiereprojets
        has_many :filiere, through: :filiereprojets
        has_many :secteurprojets 
        has_many :secteurs, through: :secteurprojets
       

end
