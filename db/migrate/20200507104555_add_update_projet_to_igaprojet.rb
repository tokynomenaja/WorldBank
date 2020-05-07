class AddUpdateProjetToIgaprojet < ActiveRecord::Migration[6.0]
  def change
    add_reference :igaprojets, :update_projet, foreign_key: true
  end
end
