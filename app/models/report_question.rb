class ReportQuestion < ApplicationRecord
  belongs_to :report
  belongs_to :question
end
