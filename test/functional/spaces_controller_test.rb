require 'test_helper'

class SpacesControllerTest < ActionController::TestCase
  setup do
    @space = spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create space" do
    assert_difference('Space.count') do
      post :create, space: { address: @space.address, availability: @space.availability, capacity: @space.capacity, city: @space.city, desc: @space.desc, img_url: @space.img_url, name: @space.name, price: @space.price, suburb: @space.suburb }
    end

    assert_redirected_to space_path(assigns(:space))
  end

  test "should show space" do
    get :show, id: @space
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @space
    assert_response :success
  end

  test "should update space" do
    put :update, id: @space, space: { address: @space.address, availability: @space.availability, capacity: @space.capacity, city: @space.city, desc: @space.desc, img_url: @space.img_url, name: @space.name, price: @space.price, suburb: @space.suburb }
    assert_redirected_to space_path(assigns(:space))
  end

  test "should destroy space" do
    assert_difference('Space.count', -1) do
      delete :destroy, id: @space
    end

    assert_redirected_to spaces_path
  end
end
