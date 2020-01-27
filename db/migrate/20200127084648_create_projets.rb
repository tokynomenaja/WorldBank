class CreateProjets < ActiveRecord::Migration[6.0]
  def change
    create_table :projets do |t|
      t.string :titre
      t.string :region
      t.string :fiche

      t.timestamps
    end
  end
end
