class AddCategoryToMovies < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :category, index: true
  end
end
