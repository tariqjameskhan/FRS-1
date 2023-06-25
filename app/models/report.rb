class Report < ApplicationRecord
  has_many :questions, class_name: 'Question', foreign_key: :report_id
  belongs_to :companies, class_name: 'Company', foreign_key: :company_id
  belongs_to :user, class_name: 'User', foreign_key: :client_id

  validates :company_id, uniqueness: true
  validates :client_id, uniqueness: true
end
