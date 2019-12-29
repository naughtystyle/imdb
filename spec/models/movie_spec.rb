require 'rails_helper'

RSpec.describe Movie, type: :model do
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
end
