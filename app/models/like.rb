class Like < ApplicationRecord
  validates :profile_id, presence: true
  
  has_many :user_likes
  has_many :users, through: :user_likes
end
