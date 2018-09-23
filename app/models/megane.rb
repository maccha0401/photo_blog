class Megane < ApplicationRecord
  validates :content, presence: true
  validates :user_id, presence: true
  belongs_to :user
  mount_uploader :picture, PictureUploader
  has_many :likes, dependent: :destroy
end
