require "application_system_test_case"

class ApprtmentsTest < ApplicationSystemTestCase
  setup do
    @apprtment = apprtments(:one)
  end

  test "visiting the index" do
    visit apprtments_url
    assert_selector "h1", text: "Apprtments"
  end

  test "creating a Apprtment" do
    visit apprtments_url
    click_on "New Apprtment"

    fill_in "Amenities", with: @apprtment.amenities
    fill_in "City", with: @apprtment.city
    fill_in "Country", with: @apprtment.country
    fill_in "Dangerousthings", with: @apprtment.dangerousThings
    fill_in "Description", with: @apprtment.description
    fill_in "Guestfavorites", with: @apprtment.guestFavorites
    fill_in "Highlights", with: @apprtment.highlights
    check "Hostingas" if @apprtment.hostingAs
    fill_in "Images", with: @apprtment.images
    fill_in "Place", with: @apprtment.place
    fill_in "Price", with: @apprtment.price
    fill_in "Rentingtype", with: @apprtment.rentingType
    fill_in "State", with: @apprtment.state
    fill_in "Street", with: @apprtment.street
    fill_in "Suit", with: @apprtment.suit
    fill_in "Title", with: @apprtment.title
    fill_in "Zipcode", with: @apprtment.zipCode
    click_on "Create Apprtment"

    assert_text "Apprtment was successfully created"
    click_on "Back"
  end

  test "updating a Apprtment" do
    visit apprtments_url
    click_on "Edit", match: :first

    fill_in "Amenities", with: @apprtment.amenities
    fill_in "City", with: @apprtment.city
    fill_in "Country", with: @apprtment.country
    fill_in "Dangerousthings", with: @apprtment.dangerousThings
    fill_in "Description", with: @apprtment.description
    fill_in "Guestfavorites", with: @apprtment.guestFavorites
    fill_in "Highlights", with: @apprtment.highlights
    check "Hostingas" if @apprtment.hostingAs
    fill_in "Images", with: @apprtment.images
    fill_in "Place", with: @apprtment.place
    fill_in "Price", with: @apprtment.price
    fill_in "Rentingtype", with: @apprtment.rentingType
    fill_in "State", with: @apprtment.state
    fill_in "Street", with: @apprtment.street
    fill_in "Suit", with: @apprtment.suit
    fill_in "Title", with: @apprtment.title
    fill_in "Zipcode", with: @apprtment.zipCode
    click_on "Update Apprtment"

    assert_text "Apprtment was successfully updated"
    click_on "Back"
  end

  test "destroying a Apprtment" do
    visit apprtments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apprtment was successfully destroyed"
  end
end
