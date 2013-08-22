require 'test_helper'

class BassesControllerTest < ActionController::TestCase
  setup do
    @bass = basses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bass" do
    assert_difference('Bass.count') do
      post :create, bass: { name: @bass.name }
    end

    assert_redirected_to bass_path(assigns(:bass))
  end

  test "should show bass" do
    get :show, id: @bass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bass
    assert_response :success
  end

  test "should update bass" do
    put :update, id: @bass, bass: { name: @bass.name }
    assert_redirected_to bass_path(assigns(:bass))
  end

  test "should destroy bass" do
    assert_difference('Bass.count', -1) do
      delete :destroy, id: @bass
    end

    assert_redirected_to basses_path
  end
end
