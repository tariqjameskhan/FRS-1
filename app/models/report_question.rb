class ReportQuestion < ApplicationRecord
  belongs_to :report
  belongs_to :question

  has_many_attached :photos
end
