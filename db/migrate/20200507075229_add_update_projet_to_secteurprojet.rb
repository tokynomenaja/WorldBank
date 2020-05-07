class AddUpdateProjetToSecteurprojet < ActiveRecord::Migration[6.0]
  def change
    add_reference :secteurprojets, :update_projet, foreign_key: true
  end
end
