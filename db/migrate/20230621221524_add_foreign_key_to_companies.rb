class AddForeignKeyToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :companies, :users, column: :client_id
  end
end
