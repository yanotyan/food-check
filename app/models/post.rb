class Post < ApplicationRecord
  has_many :posts_tags, dependent: :destroy
  has_many :tags, through: :posts_tags
  belongs_to :user


  validates :user_id, presence: true
  validates :name,    presence: true

  mount_uploader :photo, ImageUploader
end
