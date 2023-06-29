class CreateReportQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :report_questions do |t|
      t.references :report, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.boolean :answer
      t.text :fault
      t.text :recommendation
      t.string :priority
      t.date :date

      t.timestamps
    end
  end
end
