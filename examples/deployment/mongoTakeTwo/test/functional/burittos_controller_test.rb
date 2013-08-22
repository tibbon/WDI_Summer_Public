require 'test_helper'

class BurittosControllerTest < ActionController::TestCase
  setup do
    @buritto = burittos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:burittos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buritto" do
    assert_difference('Buritto.count') do
      post :create, buritto: { flavor: @buritto.flavor, name: @buritto.name }
    end

    assert_redirected_to buritto_path(assigns(:buritto))
  end

  test "should show buritto" do
    get :show, id: @buritto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buritto
    assert_response :success
  end

  test "should update buritto" do
    put :update, id: @buritto, buritto: { flavor: @buritto.flavor, name: @buritto.name }
    assert_redirected_to buritto_path(assigns(:buritto))
  end

  test "should destroy buritto" do
    assert_difference('Buritto.count', -1) do
      delete :destroy, id: @buritto
    end

    assert_redirected_to burittos_path
  end
end
