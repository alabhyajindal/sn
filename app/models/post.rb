class Post < ApplicationRecord
  belongs_to :user
  
  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes, source: :user

  validates :title, presence: true
end
