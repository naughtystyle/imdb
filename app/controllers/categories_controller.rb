class CategoriesController < ApplicationController
  def show
    render "movies/index", locals: { categories: categories, movies: movies }
  end

  private

  def movies
    Movie.filter_by(category).page(params[:page])
  end

  def category
    params[:id]
  end

  def categories
    Category.all
  end
end
