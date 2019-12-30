class Movie < ApplicationRecord
  belongs_to :category

  has_many :ratings

  validates :title, presence: true

  def self.filter_by(category)
    joins(:category).where(categories: { name: category })
  end

  def average_rating
    ratings.average(:rate)
  end
end
