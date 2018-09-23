class User < ApplicationRecord
  validates :login_name, presence: true, uniqueness: true
  
  before_validation {email.downcase!}
  validates :email, presence: true, uniqueness: true
  
  # ■password
  has_secure_password
  validates :password, presence: true, length: {minimum: 4}

  # ■association
  has_many :meganes, dependent: :destroy

  # ■Uploader
  mount_uploader :face, FaceUploader

  # ■お気に入り
  has_many :likes, dependent: :destroy
  has_many :like_meganes, through: :likes, source: :megane
end
