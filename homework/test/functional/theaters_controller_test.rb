require 'test_helper'

class TheatersControllerTest < ActionController::TestCase
  setup do
    @theater = Theater.new
    @theater.address = "222 Merchandise Mart Plaza"
    @theater.name = "Mart Theater"
    @theater.phone_number = "312-312-1234"
    @theater.save
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create theater" do
    assert_difference('Theater.count') do
      post :create, theater: { address: @theater.address, name: @theater.name, phone_number: @theater.phone_number }
    end

    assert_redirected_to "/theaters"
  end

  test "should show theater" do
    get :show, id: @theater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @theater
    assert_response :success
  end

  test "should update theater" do
    put :update, id: @theater, theater: { address: @theater.address, name: @theater.name, phone_number: @theater.phone_number }
    assert_redirected_to theater_path(assigns(:theater))
  end

  test "should destroy theater" do
    assert_difference('Theater.count', -1) do
      delete :destroy, id: @theater
    end

    assert_redirected_to "/theaters"
  end
end
