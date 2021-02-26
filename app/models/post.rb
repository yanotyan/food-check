class Post < ApplicationRecord
  has_many :posts_tags, dependent: :destroy
  has_many :tags, through: :posts_tags


  validates :user_id, presence: true
  validates :name,    presence: true

end
