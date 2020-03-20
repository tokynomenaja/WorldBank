class CreatePartenaires < ActiveRecord::Migration[6.0]
  def change
    create_table :partenaires do |t|
      t.text :plateforme
      t.text :description

      t.timestamps
    end
  end
end
