class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  validates :email, presence: true
end
