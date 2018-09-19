class User < ApplicationRecord
  validates :login_name, presence: true, uniqueness: true
  
  before_validation {email.downcase!}
  validates :email, presence: true, uniqueness: true
  
  # ■password
  has_secure_password
  validates :password, presence: true, length: {minimum: 4}

  # ■Uploader
  mount_uploader :face, FaceUploader
end
