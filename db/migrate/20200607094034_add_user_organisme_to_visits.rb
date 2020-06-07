class AddUserOrganismeToVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :user_organisme, :string
  end
end
