class RemoveUserFromCompanies < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:companies, :user, foreign_key: true)
  end
end
