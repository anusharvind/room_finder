require 'test_helper'

class RoomFacilitiesControllerTest < ActionController::TestCase
  setup do
    @room_facility = room_facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_facility" do
    assert_difference('RoomFacility.count') do
      post :create, room_facility: { ac: @room_facility.ac, basic_appliance: @room_facility.basic_appliance, four_wheeler_parking: @room_facility.four_wheeler_parking, tv: @room_facility.tv, two_wheeler_parking: @room_facility.two_wheeler_parking, wasing_machine: @room_facility.wasing_machine }
    end

    assert_redirected_to room_facility_path(assigns(:room_facility))
  end

  test "should show room_facility" do
    get :show, id: @room_facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_facility
    assert_response :success
  end

  test "should update room_facility" do
    patch :update, id: @room_facility, room_facility: { ac: @room_facility.ac, basic_appliance: @room_facility.basic_appliance, four_wheeler_parking: @room_facility.four_wheeler_parking, tv: @room_facility.tv, two_wheeler_parking: @room_facility.two_wheeler_parking, wasing_machine: @room_facility.wasing_machine }
    assert_redirected_to room_facility_path(assigns(:room_facility))
  end

  test "should destroy room_facility" do
    assert_difference('RoomFacility.count', -1) do
      delete :destroy, id: @room_facility
    end

    assert_redirected_to room_facilities_path
  end
end
