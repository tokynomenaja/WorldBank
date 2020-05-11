class AddUpdateProjetToFiliereprojet < ActiveRecord::Migration[6.0]
  def change
    add_reference :filiereprojets, :update_projet,foreign_key: true
  end
end
