class CreatePemprojets < ActiveRecord::Migration[6.0]
  def change
    create_table :pemprojets do |t|
    	t.belongs_to :pem
    	t.belongs_to :projet
      t.timestamps
    end
  end
end
