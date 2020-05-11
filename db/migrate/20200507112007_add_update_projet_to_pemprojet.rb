class AddUpdateProjetToPemprojet < ActiveRecord::Migration[6.0]
  def change
    add_reference :pemprojets, :update_projet, foreign_key: true
  end
end
