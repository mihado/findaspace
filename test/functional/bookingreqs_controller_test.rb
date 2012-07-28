require 'test_helper'

class BookingreqsControllerTest < ActionController::TestCase
  setup do
    @bookingreq = bookingreqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookingreqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookingreq" do
    assert_difference('Bookingreq.count') do
      post :create, bookingreq: { email: @bookingreq.email, end_time: @bookingreq.end_time, space_id: @bookingreq.space_id, start_time: @bookingreq.start_time, username: @bookingreq.username }
    end

    assert_redirected_to bookingreq_path(assigns(:bookingreq))
  end

  test "should show bookingreq" do
    get :show, id: @bookingreq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookingreq
    assert_response :success
  end

  test "should update bookingreq" do
    put :update, id: @bookingreq, bookingreq: { email: @bookingreq.email, end_time: @bookingreq.end_time, space_id: @bookingreq.space_id, start_time: @bookingreq.start_time, username: @bookingreq.username }
    assert_redirected_to bookingreq_path(assigns(:bookingreq))
  end

  test "should destroy bookingreq" do
    assert_difference('Bookingreq.count', -1) do
      delete :destroy, id: @bookingreq
    end

    assert_redirected_to bookingreqs_path
  end
end
