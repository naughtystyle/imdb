require "rails_helper"

feature "User views single movie" do
  scenario "with rating average" do
    movie = create(:movie, average_rating: 4)

    visit movie_path(movie)

    expect(page).to have_content("Rate: 4")
  end
end
