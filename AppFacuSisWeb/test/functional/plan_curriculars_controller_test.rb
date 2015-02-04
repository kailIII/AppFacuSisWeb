require 'test_helper'

class PlanCurricularsControllerTest < ActionController::TestCase
  setup do
    @plan_curricular = plan_curriculars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_curriculars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_curricular" do
    assert_difference('PlanCurricular.count') do
      post :create, plan_curricular: { nombre: @plan_curricular.nombre }
    end

    assert_redirected_to plan_curricular_path(assigns(:plan_curricular))
  end

  test "should show plan_curricular" do
    get :show, id: @plan_curricular
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_curricular
    assert_response :success
  end

  test "should update plan_curricular" do
    put :update, id: @plan_curricular, plan_curricular: { nombre: @plan_curricular.nombre }
    assert_redirected_to plan_curricular_path(assigns(:plan_curricular))
  end

  test "should destroy plan_curricular" do
    assert_difference('PlanCurricular.count', -1) do
      delete :destroy, id: @plan_curricular
    end

    assert_redirected_to plan_curriculars_path
  end
end
