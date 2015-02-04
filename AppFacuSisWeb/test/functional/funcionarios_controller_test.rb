require 'test_helper'

class FuncionariosControllerTest < ActionController::TestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funcionarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference('Funcionario.count') do
      post :create, funcionario: { apellidos: @funcionario.apellidos, celular: @funcionario.celular, ci: @funcionario.ci, direccion: @funcionario.direccion, email: @funcionario.email, especialidad: @funcionario.especialidad, est_civil: @funcionario.est_civil, fnac: @funcionario.fnac, genero: @funcionario.genero, lnac: @funcionario.lnac, nacionalidad: @funcionario.nacionalidad, nombres: @funcionario.nombres, telefono: @funcionario.telefono }
    end

    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should show funcionario" do
    get :show, id: @funcionario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funcionario
    assert_response :success
  end

  test "should update funcionario" do
    put :update, id: @funcionario, funcionario: { apellidos: @funcionario.apellidos, celular: @funcionario.celular, ci: @funcionario.ci, direccion: @funcionario.direccion, email: @funcionario.email, especialidad: @funcionario.especialidad, est_civil: @funcionario.est_civil, fnac: @funcionario.fnac, genero: @funcionario.genero, lnac: @funcionario.lnac, nacionalidad: @funcionario.nacionalidad, nombres: @funcionario.nombres, telefono: @funcionario.telefono }
    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should destroy funcionario" do
    assert_difference('Funcionario.count', -1) do
      delete :destroy, id: @funcionario
    end

    assert_redirected_to funcionarios_path
  end
end
