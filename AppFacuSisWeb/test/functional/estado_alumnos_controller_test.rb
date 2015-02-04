require 'test_helper'

class EstadoAlumnosControllerTest < ActionController::TestCase
  setup do
    @estado_alumno = estado_alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_alumno" do
    assert_difference('EstadoAlumno.count') do
      post :create, estado_alumno: { nombre: @estado_alumno.nombre }
    end

    assert_redirected_to estado_alumno_path(assigns(:estado_alumno))
  end

  test "should show estado_alumno" do
    get :show, id: @estado_alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_alumno
    assert_response :success
  end

  test "should update estado_alumno" do
    put :update, id: @estado_alumno, estado_alumno: { nombre: @estado_alumno.nombre }
    assert_redirected_to estado_alumno_path(assigns(:estado_alumno))
  end

  test "should destroy estado_alumno" do
    assert_difference('EstadoAlumno.count', -1) do
      delete :destroy, id: @estado_alumno
    end

    assert_redirected_to estado_alumnos_path
  end
end
