class Question < ApplicationRecord
  has_many :report_questions
  has_many :faults
end
