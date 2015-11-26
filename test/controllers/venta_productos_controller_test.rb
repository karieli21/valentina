require 'test_helper'

class VentaProductosControllerTest < ActionController::TestCase
  setup do
    @venta_producto = venta_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venta_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venta_producto" do
    assert_difference('VentaProducto.count') do
      post :create, venta_producto: { producto_id: @venta_producto.producto_id, venta_id: @venta_producto.venta_id }
    end

    assert_redirected_to venta_producto_path(assigns(:venta_producto))
  end

  test "should show venta_producto" do
    get :show, id: @venta_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venta_producto
    assert_response :success
  end

  test "should update venta_producto" do
    patch :update, id: @venta_producto, venta_producto: { producto_id: @venta_producto.producto_id, venta_id: @venta_producto.venta_id }
    assert_redirected_to venta_producto_path(assigns(:venta_producto))
  end

  test "should destroy venta_producto" do
    assert_difference('VentaProducto.count', -1) do
      delete :destroy, id: @venta_producto
    end

    assert_redirected_to venta_productos_path
  end
end
