require 'rails_helper'

feature "User can visit root page and search with form for zip code" do
  scenario "should be on page '/search' with parameters visible" do
    visit "/"

    fill_in "q", with: 90210

    click_on "Locate"

    expect(current_path).to eq("/search")
    expect(response.body).to match '"total_results": 23389,'
  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
