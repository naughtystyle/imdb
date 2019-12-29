require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  describe "#to_param" do
    it "returns the name of the category" do
      category = build(:category)

      result = category.to_param

      expect(result).to eq(category.name)
    end
  end
end
