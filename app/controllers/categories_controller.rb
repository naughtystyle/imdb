class CategoriesController < ApplicationController
  def show
    render "movies/index", locals: { categories: categories, movies: movies }
  end

  private

  def movies
    MovieFilterQuery.new(category: category, page: params[:page]).results
  end

  def category
    params[:id]
  end

  def categories
    Category.all
  end
end
