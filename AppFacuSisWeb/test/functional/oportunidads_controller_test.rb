require 'test_helper'

class OportunidadsControllerTest < ActionController::TestCase
  setup do
    @oportunidad = oportunidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oportunidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oportunidad" do
    assert_difference('Oportunidad.count') do
      post :create, oportunidad: { nombre: @oportunidad.nombre }
    end

    assert_redirected_to oportunidad_path(assigns(:oportunidad))
  end

  test "should show oportunidad" do
    get :show, id: @oportunidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oportunidad
    assert_response :success
  end

  test "should update oportunidad" do
    put :update, id: @oportunidad, oportunidad: { nombre: @oportunidad.nombre }
    assert_redirected_to oportunidad_path(assigns(:oportunidad))
  end

  test "should destroy oportunidad" do
    assert_difference('Oportunidad.count', -1) do
      delete :destroy, id: @oportunidad
    end

    assert_redirected_to oportunidads_path
  end
end
