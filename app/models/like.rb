class Like < ApplicationRecord
  validates :user_id, presence: true
  validates :megane_id, presence: true
  belongs_to :user
  belongs_to :megane, counter_cache: :likes_count
end
