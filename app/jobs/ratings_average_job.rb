class RatingsAverageJob < ApplicationJob
  queue_as :default

  def self.update(movie)
    self.perform_later(movie)
  end

  private

  def perform(movie)
    movie.update_average_rating
  end
end
