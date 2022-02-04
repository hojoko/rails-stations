class Movie < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true 
  validates :year, presence: true, length: { is: 4 }
  validates :is_showing, presence: true  
  validates :description, presence: true
  validates :image_url, presence: true

  def self.search(word, is_showing)
    @movies = Movie.all
    if word.present?
      @movies = @movies.where('name LIKE ? or description LIKE ?', "%#{word}%", "%#{word}%" )
    end
    if is_showing.present?
      @movies = @movies.where(is_showing: is_showing)
    else
      @movies 
    end
  end
end
