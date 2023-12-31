class AddInspectorAndClientToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_reference :companies, :inspector, null: true, foreign_key: { to_table: :users }
    add_reference :companies, :client, null: true, foreign_key: { to_table: :users }
  end
end
