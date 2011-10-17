require 'test_helper'

class UserArraysControllerTest < ActionController::TestCase
  setup do
    @user_array = user_arrays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_arrays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_array" do
    assert_difference('UserArray.count') do
      post :create, user_array: @user_array.attributes
    end

    assert_redirected_to user_array_path(assigns(:user_array))
  end

  test "should show user_array" do
    get :show, id: @user_array.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_array.to_param
    assert_response :success
  end

  test "should update user_array" do
    put :update, id: @user_array.to_param, user_array: @user_array.attributes
    assert_redirected_to user_array_path(assigns(:user_array))
  end

  test "should destroy user_array" do
    assert_difference('UserArray.count', -1) do
      delete :destroy, id: @user_array.to_param
    end

    assert_redirected_to user_arrays_path
  end
end
