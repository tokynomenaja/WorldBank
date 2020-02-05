class Projet < ApplicationRecord
    
   

        belongs_to :user, optional: true
end
