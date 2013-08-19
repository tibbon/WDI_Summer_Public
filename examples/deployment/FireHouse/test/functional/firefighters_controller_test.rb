require 'test_helper'

class FirefightersControllerTest < ActionController::TestCase
  setup do
    @firefighter = firefighters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:firefighters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create firefighter" do
    assert_difference('Firefighter.count') do
      post :create, firefighter: { age: @firefighter.age, name: @firefighter.name }
    end

    assert_redirected_to firefighter_path(assigns(:firefighter))
  end

  test "should show firefighter" do
    get :show, id: @firefighter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @firefighter
    assert_response :success
  end

  test "should update firefighter" do
    put :update, id: @firefighter, firefighter: { age: @firefighter.age, name: @firefighter.name }
    assert_redirected_to firefighter_path(assigns(:firefighter))
  end

  test "should destroy firefighter" do
    assert_difference('Firefighter.count', -1) do
      delete :destroy, id: @firefighter
    end

    assert_redirected_to firefighters_path
  end
end
