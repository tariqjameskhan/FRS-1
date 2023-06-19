class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :inspector, :boolean
    add_column :users, :client, :boolean
    add_column :users, :telephone_number, :string
    add_column :users, :organisation_name, :string
  end
end
