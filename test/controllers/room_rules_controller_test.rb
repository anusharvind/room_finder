require 'test_helper'

class RoomRulesControllerTest < ActionController::TestCase
  setup do
    @room_rule = room_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_rule" do
    assert_difference('RoomRule.count') do
      post :create, room_rule: { alcohol_allowed: @room_rule.alcohol_allowed, smoking_allowed: @room_rule.smoking_allowed, veg_only: @room_rule.veg_only }
    end

    assert_redirected_to room_rule_path(assigns(:room_rule))
  end

  test "should show room_rule" do
    get :show, id: @room_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_rule
    assert_response :success
  end

  test "should update room_rule" do
    patch :update, id: @room_rule, room_rule: { alcohol_allowed: @room_rule.alcohol_allowed, smoking_allowed: @room_rule.smoking_allowed, veg_only: @room_rule.veg_only }
    assert_redirected_to room_rule_path(assigns(:room_rule))
  end

  test "should destroy room_rule" do
    assert_difference('RoomRule.count', -1) do
      delete :destroy, id: @room_rule
    end

    assert_redirected_to room_rules_path
  end
end
