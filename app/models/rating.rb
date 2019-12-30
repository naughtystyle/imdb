class Rating < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :movie, :user, presence: true
  validates :rate, inclusion: 1..10

  after_commit :update_average_rating

  private

  def update_average_rating
    RatingsAverageJob.update(movie)
  end
end
