require "rails_helper"

feature "User views filtered movies" do
  scenario "when a category is selected" do
    sci_fi = create(:category, name: "Sci-Fi")
    drama = create(:category, name: "Drama")
    create(:movie, title: "Fight Club", category: drama)
    create(:movie, title: "Matrix", category: sci_fi)

    visit root_path
    click_on("Sci-Fi")

    expect(page).to have_movie("Matrix")
    expect(page).not_to have_movie("Fight Club")
  end
end
