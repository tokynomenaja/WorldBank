class AddDatePublicationToActus < ActiveRecord::Migration[6.0]
  def change
    add_column :actus, :date_publication, :date
  end
end
