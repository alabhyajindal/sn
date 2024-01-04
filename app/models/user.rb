class User < ApplicationRecord
  has_secure_password

  has_many :posts, dependent: :destroy
  
  has_many :votes, dependent: :destroy
  has_many :upvotes, through: :votes, source: :post

  validates :username, presence: true, uniqueness: true
end
