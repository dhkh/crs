require 'test_helper'

class ClickersControllerTest < ActionController::TestCase
  setup do
    @clicker = clickers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clickers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clicker" do
    assert_difference('Clicker.count') do
      post :create, :clicker => @clicker.attributes
    end

    assert_redirected_to clicker_path(assigns(:clicker))
  end

  test "should show clicker" do
    get :show, :id => @clicker.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clicker.to_param
    assert_response :success
  end

  test "should update clicker" do
    put :update, :id => @clicker.to_param, :clicker => @clicker.attributes
    assert_redirected_to clicker_path(assigns(:clicker))
  end

  test "should destroy clicker" do
    assert_difference('Clicker.count', -1) do
      delete :destroy, :id => @clicker.to_param
    end

    assert_redirected_to clickers_path
  end
end
