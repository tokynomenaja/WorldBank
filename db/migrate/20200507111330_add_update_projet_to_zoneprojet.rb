class AddUpdateProjetToZoneprojet < ActiveRecord::Migration[6.0]
  def change
    add_reference :zoneprojets, :update_projet, foreign_key: true
  end
end
