require 'test_helper'

class AsignacionDocentesControllerTest < ActionController::TestCase
  setup do
    @asignacion_docente = asignacion_docentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignacion_docentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignacion_docente" do
    assert_difference('AsignacionDocente.count') do
      post :create, asignacion_docente: { nombre: @asignacion_docente.nombre }
    end

    assert_redirected_to asignacion_docente_path(assigns(:asignacion_docente))
  end

  test "should show asignacion_docente" do
    get :show, id: @asignacion_docente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignacion_docente
    assert_response :success
  end

  test "should update asignacion_docente" do
    put :update, id: @asignacion_docente, asignacion_docente: { nombre: @asignacion_docente.nombre }
    assert_redirected_to asignacion_docente_path(assigns(:asignacion_docente))
  end

  test "should destroy asignacion_docente" do
    assert_difference('AsignacionDocente.count', -1) do
      delete :destroy, id: @asignacion_docente
    end

    assert_redirected_to asignacion_docentes_path
  end
end
