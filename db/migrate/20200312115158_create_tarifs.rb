class CreateTarifs < ActiveRecord::Migration[6.0]
  def change
    create_table :tarifs do |t|
      t.string :reference
      t.float :valeur
      t.belongs_to :unite	
      t.boolean :utilise, default: false
      t.timestamps
    end
  end
end
