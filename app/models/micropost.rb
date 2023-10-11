class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc)}
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum:140 }
  validates :image, content_type: { in: %w[image/jpeg image/gif image/png], message: 'must be a valid image format'}, size: { less_than: 5.megabytes, message: 'should be less than 5MB' }

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100,100]
    attachable.variant :thumb_larger, resize_to_limit: [300, 300]
  end
end
