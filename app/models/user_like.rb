class UserLike < ApplicationRecord
  belongs_to :like
  belongs_to :user
end
