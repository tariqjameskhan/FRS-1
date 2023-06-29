class RemoveColumnsFromQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :answer, :boolean
    remove_column :questions, :fault, :text
    remove_column :questions, :recommendation, :text
    remove_column :questions, :priority, :string
    remove_column :questions, :date, :date
  end
end
