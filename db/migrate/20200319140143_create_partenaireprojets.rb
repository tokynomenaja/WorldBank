class CreatePartenaireprojets < ActiveRecord::Migration[6.0]
  def change
    create_table :partenaireprojets do |t|
    	t.belongs_to :partenaire, index: true
    	t.belongs_to :projet, index: true
      t.timestamps
    end
  end
end
