class MoviesController < ApplicationController
  def index
    render locals: { categories: categories, movies: movies }
  end

  private

  def categories
    Category.all
  end

  def movies
    Movie.page(params[:page])
  end
end
