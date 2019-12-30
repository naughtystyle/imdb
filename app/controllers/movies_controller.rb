class MoviesController < ApplicationController
  def index
    render locals: { categories: categories, movies: movies }
  end

  def show
    render locals: { movie: movie }
  end

  private

  def categories
    Category.all
  end

  def movies
    Movie.page(params[:page])
  end

  def movie
    Movie.find(params[:id])
  end
end
