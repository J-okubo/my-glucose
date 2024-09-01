class Post < ApplicationRecord
  validates :text, presence: true
  has_one_attached :image
end
