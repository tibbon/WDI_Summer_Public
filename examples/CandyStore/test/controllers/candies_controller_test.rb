require 'test_helper'

class CandiesControllerTest < ActionController::TestCase
  setup do
    @candy = candies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candy" do
    assert_difference('Candy.count') do
      post :create, candy: { awards: @candy.awards, flavors: @candy.flavors, name: @candy.name, price: @candy.price }
    end

    assert_redirected_to candy_path(assigns(:candy))
  end

  test "should show candy" do
    get :show, id: @candy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candy
    assert_response :success
  end

  test "should update candy" do
    patch :update, id: @candy, candy: { awards: @candy.awards, flavors: @candy.flavors, name: @candy.name, price: @candy.price }
    assert_redirected_to candy_path(assigns(:candy))
  end

  test "should destroy candy" do
    assert_difference('Candy.count', -1) do
      delete :destroy, id: @candy
    end

    assert_redirected_to candies_path
  end
end
