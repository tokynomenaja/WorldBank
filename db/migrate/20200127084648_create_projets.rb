class CreateProjets < ActiveRecord::Migration[6.0]
  def change
    create_table :projets do |t|
      t.string :nom_du_projet
      t.string :ptf
      t.string :secteur
      t.string :forme_d_appui
      t.string :filière_associees
      t.string :iga
      t.string :objectif_generale_du_projet
      t.string :aspsp
      t.string :zone
      t.string :partenaire_d_implementaton
      t.string :beneficiaires
      t.integer :montant
      t.string  :nature_de_l_appui
      t.integer :debut_du_projet
      t.integer :fin
      t.string :apdem
       

     
      t.belongs_to :secteur, index: true
      t.belongs_to :user, index: true
      
      t.timestamps
    end
  end
end
