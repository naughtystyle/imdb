class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :text

      t.timestamps null: false
    end
  end
end
