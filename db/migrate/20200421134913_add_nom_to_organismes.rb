class AddNomToOrganismes < ActiveRecord::Migration[6.0]
  def change
    add_column :organismes, :nom, :string
  end
end
