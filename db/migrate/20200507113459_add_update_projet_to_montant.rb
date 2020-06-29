class AddUpdateProjetToMontant < ActiveRecord::Migration[6.0]
  def change
    add_reference :montants, :update_projet, foreign_key: true
  end
end
