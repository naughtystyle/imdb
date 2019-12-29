require "rails_helper"

feature "User views all movies" do
  scenario "when there are some movies to list" do
    create(:movie, title: "Fight Club")
    create(:movie, title: "Matrix")

    visit root_path

    expect(page).to have_movie("Fight Club")
    expect(page).to have_movie("Matrix")
  end

  def have_movie(title)
    have_selector(".movie", text: title)
  end
end
