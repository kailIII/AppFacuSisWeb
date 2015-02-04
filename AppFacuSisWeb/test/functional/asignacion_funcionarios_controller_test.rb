require 'test_helper'

class AsignacionFuncionariosControllerTest < ActionController::TestCase
  setup do
    @asignacion_funcionario = asignacion_funcionarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignacion_funcionarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignacion_funcionario" do
    assert_difference('AsignacionFuncionario.count') do
      post :create, asignacion_funcionario: { nombre: @asignacion_funcionario.nombre }
    end

    assert_redirected_to asignacion_funcionario_path(assigns(:asignacion_funcionario))
  end

  test "should show asignacion_funcionario" do
    get :show, id: @asignacion_funcionario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignacion_funcionario
    assert_response :success
  end

  test "should update asignacion_funcionario" do
    put :update, id: @asignacion_funcionario, asignacion_funcionario: { nombre: @asignacion_funcionario.nombre }
    assert_redirected_to asignacion_funcionario_path(assigns(:asignacion_funcionario))
  end

  test "should destroy asignacion_funcionario" do
    assert_difference('AsignacionFuncionario.count', -1) do
      delete :destroy, id: @asignacion_funcionario
    end

    assert_redirected_to asignacion_funcionarios_path
  end
end
