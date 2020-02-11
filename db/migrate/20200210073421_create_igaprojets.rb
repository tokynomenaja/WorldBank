class CreateIgaprojets < ActiveRecord::Migration[6.0]
  def change
    create_table :igaprojets do |t|
    		t.belongs_to :iga
    		t.belongs_to :projet
      t.timestamps
    end
  end
end
