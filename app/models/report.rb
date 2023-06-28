class Report < ApplicationRecord
  belongs_to :company
  has_many_attached :photos
end
