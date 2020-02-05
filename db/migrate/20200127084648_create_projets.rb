class CreateProjets < ActiveRecord::Migration[6.0]
  def change
    create_table :projets do |t|
      t.string :nom_du_projet
      t.string :ptf
      t.string :secteur
      t.string :forme_d_appui
      t.string :Filière_associees
      t.string :institions_gouvernementales_associees
      t.string :Objectif_generale_du_projet
      t.string :Appui_specifique_au_secteur_prive
      t.string :Zone_d_intervention
      t.string :Partenaire_d_implementaton
      t.string :Beneficiaires
      t.integer :Montant
      t.string  :Nature_de_l_appui
      t.integer :Debut_du_projet
      t.integer :Fin_du_projet
      t.string :Alignement_aux_priorites_du_plan_emergeance_Madagascar

      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
