require 'test_helper'

class ServcesControllerTest < ActionController::TestCase
  setup do
    @servce = servces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servce" do
    assert_difference('Servce.count') do
      post :create, servce: { description: @servce.description, price: @servce.price, title: @servce.title }
    end

    assert_redirected_to servce_path(assigns(:servce))
  end

  test "should show servce" do
    get :show, id: @servce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servce
    assert_response :success
  end

  test "should update servce" do
    put :update, id: @servce, servce: { description: @servce.description, price: @servce.price, title: @servce.title }
    assert_redirected_to servce_path(assigns(:servce))
  end

  test "should destroy servce" do
    assert_difference('Servce.count', -1) do
      delete :destroy, id: @servce
    end

    assert_redirected_to servces_path
  end
end
