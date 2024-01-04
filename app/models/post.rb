class Post < ApplicationRecord
  belongs_to :user
  has_many :votes, dependent: :destroy
  validates_uniqueness_of :user_id, :post_id

  validates :title, presence: true
end
