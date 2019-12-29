class Category < ApplicationRecord
  validates :name, presence: true

  def to_param
    name
  end
end
