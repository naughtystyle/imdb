require "rails_helper"

RSpec.describe MovieFilterQuery do
  describe ".results" do
    it "filters movies by category " do
      category_name = "Action"
      category = create(:category, name: category_name)
      create(:movie, title: "Matrix", category: category)
      create(:movie, title: "Fight Club")

      result = MovieFilterQuery.new(category: category_name).results

      expect(result.pluck(:title)).to eq(%w(Matrix))
    end
  end
end
