require 'test_helper'

class ProvPintsControllerTest < ActionController::TestCase
  setup do
    @prov_pint = prov_pints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prov_pints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prov_pint" do
    assert_difference('ProvPint.count') do
      post :create, prov_pint: { pintura_id: @prov_pint.pintura_id, proveedor_id: @prov_pint.proveedor_id }
    end

    assert_redirected_to prov_pint_path(assigns(:prov_pint))
  end

  test "should show prov_pint" do
    get :show, id: @prov_pint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prov_pint
    assert_response :success
  end

  test "should update prov_pint" do
    patch :update, id: @prov_pint, prov_pint: { pintura_id: @prov_pint.pintura_id, proveedor_id: @prov_pint.proveedor_id }
    assert_redirected_to prov_pint_path(assigns(:prov_pint))
  end

  test "should destroy prov_pint" do
    assert_difference('ProvPint.count', -1) do
      delete :destroy, id: @prov_pint
    end

    assert_redirected_to prov_pints_path
  end
end
