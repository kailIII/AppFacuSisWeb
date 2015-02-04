require 'test_helper'

class TipoBecasControllerTest < ActionController::TestCase
  setup do
    @tipo_beca = tipo_becas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_becas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_beca" do
    assert_difference('TipoBeca.count') do
      post :create, tipo_beca: { descripcion: @tipo_beca.descripcion }
    end

    assert_redirected_to tipo_beca_path(assigns(:tipo_beca))
  end

  test "should show tipo_beca" do
    get :show, id: @tipo_beca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_beca
    assert_response :success
  end

  test "should update tipo_beca" do
    put :update, id: @tipo_beca, tipo_beca: { descripcion: @tipo_beca.descripcion }
    assert_redirected_to tipo_beca_path(assigns(:tipo_beca))
  end

  test "should destroy tipo_beca" do
    assert_difference('TipoBeca.count', -1) do
      delete :destroy, id: @tipo_beca
    end

    assert_redirected_to tipo_becas_path
  end
end
