class CreateFaults < ActiveRecord::Migration[7.0]
  def change
    create_table :faults do |t|
      t.text :fault_detail
      t.text :recommendation
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
