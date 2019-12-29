FactoryBot.define do
  factory :movie do
    sequence(:title) {|n| "Movie title #{n}" }
  end
end
