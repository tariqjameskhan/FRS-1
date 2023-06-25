class ChangePhoneNumberToStringInCompanies < ActiveRecord::Migration[7.0]
  def change
    change_column :companies, :telephone_number, :string
  end
end
