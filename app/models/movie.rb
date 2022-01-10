class Movie < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true 
  validates :year, length: { is: 4 }
  validates :is_showing, acceptance: true
  validates :description, presence: true
  validates :image_url, presence: true
end
