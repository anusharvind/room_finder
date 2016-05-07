require 'test_helper'

class RoomSearchesControllerTest < ActionController::TestCase
  setup do
    @room_search = room_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_search" do
    assert_difference('RoomSearch.count') do
      post :create, room_search: {  }
    end

    assert_redirected_to room_search_path(assigns(:room_search))
  end

  test "should show room_search" do
    get :show, id: @room_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_search
    assert_response :success
  end

  test "should update room_search" do
    patch :update, id: @room_search, room_search: {  }
    assert_redirected_to room_search_path(assigns(:room_search))
  end

  test "should destroy room_search" do
    assert_difference('RoomSearch.count', -1) do
      delete :destroy, id: @room_search
    end

    assert_redirected_to room_searches_path
  end
end
