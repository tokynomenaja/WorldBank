class CreateSecteurFilieres < ActiveRecord::Migration[6.0]
  def change
    create_table :secteur_filieres do |t|
    	t.belongs_to :secteur, index: true
    	t.belongs_to :filiere, index: true
      t.timestamps
    end
  end
end
