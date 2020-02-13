class Projet < ApplicationRecord
        belongs_to :user, optional: true
        belongs_to :ptf, optional: true
        belongs_to :montant, optional: true
        belongs_to :appui, optional: true
# relation de table entre projet et secteur a travers benefprojet
        has_many :benefprojets
        has_many :beneficiaire, through: :benefprojets
# relation de table entre projet et secteur a travers zoneprojet
        has_many :zoneprojets
        has_many :zone, through: :zoneprojets
        # relation de table entre projet et secteur a travers igaprojets
        has_many :igaprojets
        has_many :iga, through: :igaprojets
     # relation de table entre projet et secteur a travers filiereprojets
        has_many :filiereprojets
        has_many :filiere, through: :filiereprojets

        # relation de table entre projet et secteur a travers secteurprojet

        has_many :secteurprojets 
        has_many :secteurs, through: :secteurprojets
       

end
