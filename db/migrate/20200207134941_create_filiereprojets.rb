class CreateFiliereprojets < ActiveRecord::Migration[6.0]
  def change
    create_table :filiereprojets do |t|
      t.belongs_to :projet
      t.belongs_to :filiere
      t.timestamps
    end
  end
end
