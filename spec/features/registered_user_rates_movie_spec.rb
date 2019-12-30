require "rails_helper"

feature "Registered User rates movie" do
  scenario "from home page" do
    movie = create(:movie, title: "Matrix")
    user = create(:user)

    visit root_path(as: user)
    submit_form(rate: 10)

    expect(page).to have_movie("Matrix")
    expect(movie.ratings.first.rate).to eq(10)
  end

  def submit_form(rate:)
    select rate, from: "rating_rate"
    click_button "Save"
  end
end
