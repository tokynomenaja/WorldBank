class CreateOrganismeContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :organisme_contacts do |t|
    		t.belongs_to :ptf, index: true
	      t.belongs_to :iga, index: true
	      t.belongs_to :message, index: true
      t.timestamps
    end
  end
end
