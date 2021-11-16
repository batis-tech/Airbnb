require "test_helper"

class ApprtmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apprtment = apprtments(:one)
  end

  test "should get index" do
    get apprtments_url
    assert_response :success
  end

  test "should get new" do
    get new_apprtment_url
    assert_response :success
  end

  test "should create apprtment" do
    assert_difference('Apprtment.count') do
      post apprtments_url, params: { apprtment: { amenities: @apprtment.amenities, city: @apprtment.city, country: @apprtment.country, dangerousThings: @apprtment.dangerousThings, description: @apprtment.description, guestFavorites: @apprtment.guestFavorites, highlights: @apprtment.highlights, hostingAs: @apprtment.hostingAs, images: @apprtment.images, place: @apprtment.place, price: @apprtment.price, rentingType: @apprtment.rentingType, state: @apprtment.state, street: @apprtment.street, suit: @apprtment.suit, title: @apprtment.title, zipCode: @apprtment.zipCode } }
    end

    assert_redirected_to apprtment_url(Apprtment.last)
  end

  test "should show apprtment" do
    get apprtment_url(@apprtment)
    assert_response :success
  end

  test "should get edit" do
    get edit_apprtment_url(@apprtment)
    assert_response :success
  end

  test "should update apprtment" do
    patch apprtment_url(@apprtment), params: { apprtment: { amenities: @apprtment.amenities, city: @apprtment.city, country: @apprtment.country, dangerousThings: @apprtment.dangerousThings, description: @apprtment.description, guestFavorites: @apprtment.guestFavorites, highlights: @apprtment.highlights, hostingAs: @apprtment.hostingAs, images: @apprtment.images, place: @apprtment.place, price: @apprtment.price, rentingType: @apprtment.rentingType, state: @apprtment.state, street: @apprtment.street, suit: @apprtment.suit, title: @apprtment.title, zipCode: @apprtment.zipCode } }
    assert_redirected_to apprtment_url(@apprtment)
  end

  test "should destroy apprtment" do
    assert_difference('Apprtment.count', -1) do
      delete apprtment_url(@apprtment)
    end

    assert_redirected_to apprtments_url
  end
end
