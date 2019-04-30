class User < ApplicationRecord
  has_secure_password
  validates :email, presence: :true, uniqueness: :true
  has_many :activity_users
  has_many :activities, through: :activity_users
end
