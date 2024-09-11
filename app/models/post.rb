class Post < ApplicationRecord
  validates :content, presence: true
  has_one_attached :image
  belongs_to :user
end
