require "rails_helper"

describe "Site functionality", type: :feature do
  scenario "when searching for a flight" do
    create(:flight)
    visit root_path
    expect(page).to have_content("Flights from")
    # should proceed to search results
    select("LaGuardia Airport", from: "flight_from_airport")
    select("San Francisco Intl Airport", from: "flight_to_airport")
    select("1", from: "flight_num_passengers")
    check("any-date")
    click_button("Search Flights")
    expect(page).to have_content("Search Results")
    within(".search-results") do
      choose("results[chosen_flight]").value
    end
    click_button("Choose Flight")
    # should redirect to flight booking
    expect(current_path).to eq(book_flight_path)
    fill_in("First name", with: "John")
    fill_in("Last name", with: "Doe")
    fill_in("Email", with: "email@example.com")
    click_button("Submit Information")
    # should redirect to page with flight info
    expect(current_path).to eq(booking_path(1))
    expect(page).to have_content("Flight booked!")
  end
end