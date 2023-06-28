class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question_name
      t.boolean :answer
      t.text :fault
      t.text :recommendation
      t.string :priority
      t.date :date

      t.timestamps
    end
  end
end
