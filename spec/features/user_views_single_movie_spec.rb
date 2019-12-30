require "rails_helper"

feature "User views single movie" do
  scenario "with rating average" do
    movie = create(:movie)
    create(:rating, rate: 3, movie: movie)
    create(:rating, rate: 5, movie: movie)

    visit movie_path(movie)

    expect(page).to have_content("Rate: 4")
  end
end
