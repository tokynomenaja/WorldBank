class CreateTarifs < ActiveRecord::Migration[6.0]
  def change
    create_table :tarifs do |t|
      t.string :reference
      t.float :valeur
      t.belongs_to :unite	
      t.timestamps
    end
  end
end
