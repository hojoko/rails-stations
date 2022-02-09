class Movie < ApplicationRecord
  has_many :schedules, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true 
  validates :year, presence: true, length: { is: 4 }
  validates :is_showing, presence: true  
  validates :description, presence: true
  validates :image_url, presence: true

  def self.search(keyword, is_showing)
    @movies = Movie.all
    if keyword.present?
      @movies = @movies.where('name LIKE ? or description LIKE ?', "%#{keyword}%", "%#{keyword}%" )
    end
    if is_showing.present?
      @movies = @movies.where(is_showing: is_showing)
    else
      @movies 
    end
  end
end
