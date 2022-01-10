class Movie < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true 
  validates :year, presence: true, length: { is: 4 }
  validates :is_showing, inclusion: { in: [true, false] }
  validates :description, presence: true
  validates :image_url, presence: true, length: { maximum: 50 }
end
