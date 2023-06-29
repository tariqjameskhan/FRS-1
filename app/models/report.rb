class Report < ApplicationRecord
  belongs_to :company
  has_many_attached :photos
  has_many :report_questions
  has_many :questions, through: :report_questions
end
