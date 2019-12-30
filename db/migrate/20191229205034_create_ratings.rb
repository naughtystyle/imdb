class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.integer :rate, null: false
      t.index [:user_id, :movie_id], unique: true

      t.timestamps null: false
    end
  end
end
