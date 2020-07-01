class AddTitleToOrganismeContact < ActiveRecord::Migration[6.0]
  def change
    add_column :organisme_contacts, :title, :string
  end
end
