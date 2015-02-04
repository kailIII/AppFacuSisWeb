require 'test_helper'

class PeriodoLectivosControllerTest < ActionController::TestCase
  setup do
    @periodo_lectivo = periodo_lectivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:periodo_lectivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create periodo_lectivo" do
    assert_difference('PeriodoLectivo.count') do
      post :create, periodo_lectivo: { periodo: @periodo_lectivo.periodo }
    end

    assert_redirected_to periodo_lectivo_path(assigns(:periodo_lectivo))
  end

  test "should show periodo_lectivo" do
    get :show, id: @periodo_lectivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @periodo_lectivo
    assert_response :success
  end

  test "should update periodo_lectivo" do
    put :update, id: @periodo_lectivo, periodo_lectivo: { periodo: @periodo_lectivo.periodo }
    assert_redirected_to periodo_lectivo_path(assigns(:periodo_lectivo))
  end

  test "should destroy periodo_lectivo" do
    assert_difference('PeriodoLectivo.count', -1) do
      delete :destroy, id: @periodo_lectivo
    end

    assert_redirected_to periodo_lectivos_path
  end
end
