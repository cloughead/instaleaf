require 'test_helper'

class DispensariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dispensary = dispensaries(:one)
  end

  test "should get index" do
    get dispensaries_url
    assert_response :success
  end

  test "should get new" do
    get new_dispensary_url
    assert_response :success
  end

  test "should create dispensary" do
    assert_difference('Dispensary.count') do
      post dispensaries_url, params: { dispensary: { city: @dispensary.city, country: @dispensary.country, description: @dispensary.description, email: @dispensary.email, kind: @dispensary.kind, lat: @dispensary.lat, lng: @dispensary.lng, name: @dispensary.name, phone: @dispensary.phone, postal_code: @dispensary.postal_code, province: @dispensary.province, website: @dispensary.website } }
    end

    assert_redirected_to dispensary_url(Dispensary.last)
  end

  test "should show dispensary" do
    get dispensary_url(@dispensary)
    assert_response :success
  end

  test "should get edit" do
    get edit_dispensary_url(@dispensary)
    assert_response :success
  end

  test "should update dispensary" do
    patch dispensary_url(@dispensary), params: { dispensary: { city: @dispensary.city, country: @dispensary.country, description: @dispensary.description, email: @dispensary.email, kind: @dispensary.kind, lat: @dispensary.lat, lng: @dispensary.lng, name: @dispensary.name, phone: @dispensary.phone, postal_code: @dispensary.postal_code, province: @dispensary.province, website: @dispensary.website } }
    assert_redirected_to dispensary_url(@dispensary)
  end

  test "should destroy dispensary" do
    assert_difference('Dispensary.count', -1) do
      delete dispensary_url(@dispensary)
    end

    assert_redirected_to dispensaries_url
  end
end
