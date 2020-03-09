class CreateOrganismes < ActiveRecord::Migration[6.0]
  def change
    create_table :organismes do |t|
      t.belongs_to :ptf, index: true
      t.belongs_to :iga, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
