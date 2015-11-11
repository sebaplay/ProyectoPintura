require 'test_helper'

class PinturasControllerTest < ActionController::TestCase
  setup do
    @pintura = pinturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pinturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pintura" do
    assert_difference('Pintura.count') do
      post :create, pintura: { color: @pintura.color, modelo: @pintura.modelo, proveedor_id: @pintura.proveedor_id }
    end

    assert_redirected_to pintura_path(assigns(:pintura))
  end

  test "should show pintura" do
    get :show, id: @pintura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pintura
    assert_response :success
  end

  test "should update pintura" do
    patch :update, id: @pintura, pintura: { color: @pintura.color, modelo: @pintura.modelo, proveedor_id: @pintura.proveedor_id }
    assert_redirected_to pintura_path(assigns(:pintura))
  end

  test "should destroy pintura" do
    assert_difference('Pintura.count', -1) do
      delete :destroy, id: @pintura
    end

    assert_redirected_to pinturas_path
  end
end
