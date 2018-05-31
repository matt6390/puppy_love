class User < ApplicationRecord
  has_secure_password
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :user_likes
  has_many :likes, through: :user_likes

  has_many :messages
  has_many :conversations
end
