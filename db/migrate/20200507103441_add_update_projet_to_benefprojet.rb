class AddUpdateProjetToBenefprojet < ActiveRecord::Migration[6.0]
  def change
    add_reference :benefprojets, :update_projet, foreign_key: true
  end
end
