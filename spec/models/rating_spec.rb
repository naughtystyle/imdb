require 'rails_helper'

RSpec.describe Rating, type: :model do
  describe "associations" do
    it { should belong_to(:movie) }
    it { should belong_to(:user) }
  end

  describe "validations" do
    it { should validate_presence_of(:movie) }
    it { should validate_presence_of(:user) }
    it { should validate_inclusion_of(:rate).in_array((1..5).to_a) }
  end
end
