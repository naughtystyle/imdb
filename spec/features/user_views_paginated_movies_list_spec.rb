require "rails_helper"

feature "User views paginated movies" do
  scenario "when there are too many movies listed" do
    movies_per_page = Movie.paginates_per(2)
    create_list(:movie, movies_per_page + 1)

    visit root_path

    expect(page).to have_pagination
  end

  def have_pagination
    have_css('.pagination')
  end
end
