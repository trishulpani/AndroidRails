require 'test_helper'

class LeaveDetailsControllerTest < ActionController::TestCase
  setup do
    @leave_detail = leave_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leave_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leave_detail" do
    assert_difference('LeaveDetail.count') do
      post :create, :leave_detail => @leave_detail.attributes
    end

    assert_redirected_to leave_detail_path(assigns(:leave_detail))
  end

  test "should show leave_detail" do
    get :show, :id => @leave_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @leave_detail.to_param
    assert_response :success
  end

  test "should update leave_detail" do
    put :update, :id => @leave_detail.to_param, :leave_detail => @leave_detail.attributes
    assert_redirected_to leave_detail_path(assigns(:leave_detail))
  end

  test "should destroy leave_detail" do
    assert_difference('LeaveDetail.count', -1) do
      delete :destroy, :id => @leave_detail.to_param
    end

    assert_redirected_to leave_details_path
  end
end
