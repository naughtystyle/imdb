FactoryBot.define do
  factory :movie do
    sequence(:title) {|n| "Movie title #{n}" }

    category
  end

  factory :category do
    sequence(:name) {|n| "Category name #{n}" }
  end

  factory :user do
    sequence(:email) { |n| "user#{n}@email.com" }
    password { "password" }
  end
end
