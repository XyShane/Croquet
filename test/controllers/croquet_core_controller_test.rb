require 'test_helper'

class CroquetCoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get join" do
    get :join
    assert_response :success
  end

  test "should get bookings" do
    get :bookings
    assert_response :success
  end

  test "should get club_matters" do
    get :club_matters
    assert_response :success
  end

  test "should get how_to_get_there" do
    get :how_to_get_there
    assert_response :success
  end

  test "should get links" do
    get :links
    assert_response :success
  end

  test "should get newsletters" do
    get :newsletters
    assert_response :success
  end

  test "should get programme" do
    get :programme
    assert_response :success
  end

  test "should get requirement" do
    get :requirement
    assert_response :success
  end

end
