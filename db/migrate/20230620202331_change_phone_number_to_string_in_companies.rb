class ChangePhoneNumberToStringInCompanies < ActiveRecord::Migration[7.0]
  def change
    # Change data type of telephone_number column to string
    change_column :companies, :telephone_number, :string

    # Remove user_id foreign key from companies table
    remove_foreign_key :companies, :user_id
    remove_index :companies, name: "index_companies_on_user_id"
    remove_reference :companies, :user, index: true
  end
end
