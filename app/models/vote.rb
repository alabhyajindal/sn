class Vote < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :user, uniqueness: { scope: :post,  message: ' has already upvoted' }
end
