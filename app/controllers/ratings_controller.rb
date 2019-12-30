class RatingsController < ApplicationController
  before_action :require_login

  def create
    Rating.create(rating_params)

    redirect_back(fallback_location: root_url)
  end

  private

  def rating_params
    params.require(:rating).permit(:rate).
      merge(user: current_user, movie: movie)
  end

  def movie
    Movie.find(params[:movie_id])
  end
end
