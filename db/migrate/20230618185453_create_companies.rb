class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.integer :telephone_number
      t.string :email_address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
