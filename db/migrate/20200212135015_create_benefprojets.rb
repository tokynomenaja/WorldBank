class CreateBenefprojets < ActiveRecord::Migration[6.0]
  def change
    create_table :benefprojets do |t|

    t.belongs_to :projet
    t.belongs_to :beneficiaire
      t.timestamps
    end
  end
end
