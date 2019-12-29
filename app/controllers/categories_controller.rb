class CategoriesController < ApplicationController
  def show
    movies = Movie.filter_by(category)

    render "movies/index", locals: { categories: categories, movies: movies }
  end

  private

  def category
    params[:id]
  end

  def categories
    Category.all
  end
end
