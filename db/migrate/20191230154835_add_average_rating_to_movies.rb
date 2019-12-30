class AddAverageRatingToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :average_rating, :integer, null: false, default: 0
  end
end
