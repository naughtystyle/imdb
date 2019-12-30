class Rating < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :movie, :user, presence: true
  validates :rate, inclusion: 1..10
end
