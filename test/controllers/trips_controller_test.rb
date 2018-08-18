require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trips_new_url
    assert_response :success
  end

  test "should get show" do
    get trips_show_url
    assert_response :success
  end

  test "should get create" do
    get trips_create_url
    assert_response :success
  end

end
