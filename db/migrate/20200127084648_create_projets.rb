class CreateProjets < ActiveRecord::Migration[6.0]
  def change
    create_table :projets do |t|
      t.string :nom_du_projet
      t.string :ptf
      t.string :forme_d_appui
      t.string :objectif_generale_du_projet
      t.string :aspsp
      t.string :zone
      t.string :partenaire_d_implementaton
      t.string :debut_du_projet
      t.string :fin
      t.string :apdem
       





      t.belongs_to :beneficiaire, index: true
      t.belongs_to :appui, index: true
      t.belongs_to :periode, index: true
      t.belongs_to :montant, index: true 
      t.belongs_to :zone, index: true
      t.belongs_to :iga, index: true
      t.belongs_to :ptf, index: true
      t.belongs_to :secteur, index: true
      t.belongs_to :user, index: true
      
      t.timestamps
    end
  end
end
