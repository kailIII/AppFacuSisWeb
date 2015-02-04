require 'test_helper'

class AsignacionEstadoAlumnosControllerTest < ActionController::TestCase
  setup do
    @asignacion_estado_alumno = asignacion_estado_alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignacion_estado_alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignacion_estado_alumno" do
    assert_difference('AsignacionEstadoAlumno.count') do
      post :create, asignacion_estado_alumno: { nombre: @asignacion_estado_alumno.nombre }
    end

    assert_redirected_to asignacion_estado_alumno_path(assigns(:asignacion_estado_alumno))
  end

  test "should show asignacion_estado_alumno" do
    get :show, id: @asignacion_estado_alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignacion_estado_alumno
    assert_response :success
  end

  test "should update asignacion_estado_alumno" do
    put :update, id: @asignacion_estado_alumno, asignacion_estado_alumno: { nombre: @asignacion_estado_alumno.nombre }
    assert_redirected_to asignacion_estado_alumno_path(assigns(:asignacion_estado_alumno))
  end

  test "should destroy asignacion_estado_alumno" do
    assert_difference('AsignacionEstadoAlumno.count', -1) do
      delete :destroy, id: @asignacion_estado_alumno
    end

    assert_redirected_to asignacion_estado_alumnos_path
  end
end
