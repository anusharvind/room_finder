require 'test_helper'

class RoomsControllerTest < ActionController::TestCase
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post :create, room: { area: @room.area, city: @room.city, current_vacancy: @room.current_vacancy, expected_rent: @room.expected_rent, gender_preference: @room.gender_preference, latitude: @room.latitude, longitude: @room.longitude, name: @room.name, room_type: @room.room_type, total_limit_integer: @room.total_limit_integer, total_rent: @room.total_rent, user_id: @room.user_id, visibility: @room.visibility }
    end

    assert_redirected_to room_path(assigns(:room))
  end

  test "should show room" do
    get :show, id: @room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room
    assert_response :success
  end

  test "should update room" do
    patch :update, id: @room, room: { area: @room.area, city: @room.city, current_vacancy: @room.current_vacancy, expected_rent: @room.expected_rent, gender_preference: @room.gender_preference, latitude: @room.latitude, longitude: @room.longitude, name: @room.name, room_type: @room.room_type, total_limit_integer: @room.total_limit_integer, total_rent: @room.total_rent, user_id: @room.user_id, visibility: @room.visibility }
    assert_redirected_to room_path(assigns(:room))
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete :destroy, id: @room
    end

    assert_redirected_to rooms_path
  end
end
