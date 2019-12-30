require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "associations" do
    it { should belong_to(:category) }
    it { should have_many(:ratings) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
  end

  describe ".filter_by" do
    it "filters movies by category " do
      category_name = "Action"
      category = create(:category, name: category_name)
      create(:movie, title: "Matrix", category: category)
      create(:movie, title: "Fight Club")

      result = Movie.filter_by(category_name)

      expect(result.pluck(:title)).to eq(%w(Matrix))
    end
  end

  describe "#average_rating" do
    it "calculates average from all the movie ratings" do
      movie = create(:movie)
      create(:rating, rate: 3, movie: movie)
      create(:rating, rate: 5, movie: movie)

      result = movie.average_rating

      expect(result).to eq(4)
    end
  end
end
