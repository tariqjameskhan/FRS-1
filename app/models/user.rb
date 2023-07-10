class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :inspected_companies, class_name: 'Company', foreign_key: 'inspector_id'
  has_many :client_companies, class_name: 'Company', foreign_key: 'client_id'
  has_one_attached :avatar
end
