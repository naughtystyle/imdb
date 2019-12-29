class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :categories, :name, unique: true
  end
end
