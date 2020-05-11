class AddUpdateProjetToFormeprojet < ActiveRecord::Migration[6.0]
  def change
    add_reference :formeprojets, :update_projet, foreign_key: true
  end
end
