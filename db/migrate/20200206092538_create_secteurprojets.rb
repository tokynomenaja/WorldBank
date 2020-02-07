class CreateSecteurprojets < ActiveRecord::Migration[6.0]
  def change
    create_table :secteurprojets do |t|

      t.belongs_to :secteur
      t.belongs_to :projet
      t.timestamps
    end
  end
end
