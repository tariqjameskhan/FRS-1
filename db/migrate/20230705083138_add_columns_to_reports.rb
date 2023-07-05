class AddColumnsToReports < ActiveRecord::Migration[7.0]
  def change
    add_column :reports, :construction_details, :text
    add_column :reports, :number_of_floors, :integer
    add_column :reports, :floor_area, :integer
  end
end
