class Movie < ApplicationRecord
  belongs_to :category

  has_many :ratings

  validates :title, presence: true

  def update_average_rating
    update(average_rating: ratings.average(:rate))
  end
end
