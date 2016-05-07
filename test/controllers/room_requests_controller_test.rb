require 'test_helper'

class RoomRequestsControllerTest < ActionController::TestCase
  setup do
    @room_request = room_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_request" do
    assert_difference('RoomRequest.count') do
      post :create, room_request: { moved: @room_request.moved, no_of_peoples: @room_request.no_of_peoples, room_id: @room_request.room_id, status: @room_request.status, user_id: @room_request.user_id }
    end

    assert_redirected_to room_request_path(assigns(:room_request))
  end

  test "should show room_request" do
    get :show, id: @room_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_request
    assert_response :success
  end

  test "should update room_request" do
    patch :update, id: @room_request, room_request: { moved: @room_request.moved, no_of_peoples: @room_request.no_of_peoples, room_id: @room_request.room_id, status: @room_request.status, user_id: @room_request.user_id }
    assert_redirected_to room_request_path(assigns(:room_request))
  end

  test "should destroy room_request" do
    assert_difference('RoomRequest.count', -1) do
      delete :destroy, id: @room_request
    end

    assert_redirected_to room_requests_path
  end
end
