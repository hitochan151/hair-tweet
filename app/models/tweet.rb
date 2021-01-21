class Tweet < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments
  
  validates :text, presence: true
  validates :image, presence: true

end
