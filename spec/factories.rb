FactoryBot.define do
  factory :movie do
    sequence(:title) {|n| "Movie title #{n}" }

    category
  end

  factory :category do
    sequence(:name) {|n| "Category name #{n}" }
  end
end
