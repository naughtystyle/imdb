class Movie < ApplicationRecord
  belongs_to :category

  has_many :ratings

  validates :title, presence: true

  def average_rating
    ratings.average(:rate)
  end
end
