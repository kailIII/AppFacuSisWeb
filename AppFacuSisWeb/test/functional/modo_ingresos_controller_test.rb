require 'test_helper'

class ModoIngresosControllerTest < ActionController::TestCase
  setup do
    @modo_ingreso = modo_ingresos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modo_ingresos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modo_ingreso" do
    assert_difference('ModoIngreso.count') do
      post :create, modo_ingreso: { descripcion: @modo_ingreso.descripcion }
    end

    assert_redirected_to modo_ingreso_path(assigns(:modo_ingreso))
  end

  test "should show modo_ingreso" do
    get :show, id: @modo_ingreso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modo_ingreso
    assert_response :success
  end

  test "should update modo_ingreso" do
    put :update, id: @modo_ingreso, modo_ingreso: { descripcion: @modo_ingreso.descripcion }
    assert_redirected_to modo_ingreso_path(assigns(:modo_ingreso))
  end

  test "should destroy modo_ingreso" do
    assert_difference('ModoIngreso.count', -1) do
      delete :destroy, id: @modo_ingreso
    end

    assert_redirected_to modo_ingresos_path
  end
end
