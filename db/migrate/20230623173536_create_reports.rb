class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :premises_name
      t.string :street_address
      t.string :telephone_number
      t.date :date_report_completed
      t.string :city
      t.string :postcode

      t.timestamps
    end
  end
end
