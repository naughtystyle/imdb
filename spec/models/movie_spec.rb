require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "associations" do
    it { should belong_to(:category) }
    it { should have_many(:ratings) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
  end

  describe "#update_average_rating" do
    it "recalculates average from all the movie ratings" do
      movie = create(:movie)
      create(:rating, rate: 3, movie: movie)
      create(:rating, rate: 5, movie: movie)

      movie.update_average_rating

      expect(movie.average_rating).to eq(4)
    end
  end
end
