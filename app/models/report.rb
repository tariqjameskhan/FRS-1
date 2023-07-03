class Report < ApplicationRecord
  belongs_to :company
  has_many_attached :photos
  has_many :report_questions
  has_many :questions, through: :report_questions

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [street_address, city, postcode].compact.join(', ')
  end
end
