class Movie < ApplicationRecord
  belongs_to :category

  validates :title, presence: true

  def self.filter_by(category)
    joins(:category).where(categories: { name: category })
  end
end
