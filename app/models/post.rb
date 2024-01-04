class Post < ApplicationRecord
  belongs_to :user
  has_many :votes, dependent: :destroy
  validates :user_id, uniqueness: { scope: :user_id }

  validates :title, presence: true
end
