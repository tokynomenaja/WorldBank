class Projet < ApplicationRecord
        validates :objectif_generale_du_projet, presence: true
        validates :aspsp, presence: true
        
        belongs_to :bailleur, optional: true, class_name: 'User'
        belongs_to :ptf, optional: true
        belongs_to :appui, optional: true
        has_many :montants
# relation de table entre projet et secteur a travers benefprojet
        has_many :benefprojets
        has_many :beneficiaires, through: :benefprojets
   
# relation de table entre projet et secteur a travers zoneprojet
        has_many :zoneprojets
        has_many :zones, through: :zoneprojets
       
        # relation de table entre projet et secteur a travers igaprojets
        has_many :igaprojets
        has_many :igas, through: :igaprojets
      
     # relation de table entre projet et secteur a travers filiereprojets
        has_many :filiereprojets
        has_many :filieres, through: :filiereprojets
        

        # relation de table entre projet et secteur a travers secteurprojet

        has_many :secteurprojets 
        has_many :secteurs, through: :secteurprojets
    

        has_many :pemprojets
        has_many :pems, through: :pemprojets

        has_many :formeprojets
        has_many :formes, through: :formeprojets

        has_many :partenaireprojets
        has_many :partenaires, through: :partenaireprojets
    
        
        has_many_attached :files
        has_one_attached :picture
       

        after_create :create_project_send

        # This method calls the order_email method from user_mailer, passing the order as an argument
        def create_project_send
            UserMailer.create_project_email(self).deliver_now
        end

end
