class Company < ApplicationRecord
  belongs_to :inspector, class_name: 'User', :foreign_key => :inspector_id
  belongs_to :client, class_name: 'User', :foreign_key => :client_id
  has_many :reports, dependent: :destroy
end
