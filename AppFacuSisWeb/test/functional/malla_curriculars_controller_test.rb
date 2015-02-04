require 'test_helper'

class MallaCurricularsControllerTest < ActionController::TestCase
  setup do
    @malla_curricular = malla_curriculars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:malla_curriculars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create malla_curricular" do
    assert_difference('MallaCurricular.count') do
      post :create, malla_curricular: {  }
    end

    assert_redirected_to malla_curricular_path(assigns(:malla_curricular))
  end

  test "should show malla_curricular" do
    get :show, id: @malla_curricular
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @malla_curricular
    assert_response :success
  end

  test "should update malla_curricular" do
    put :update, id: @malla_curricular, malla_curricular: {  }
    assert_redirected_to malla_curricular_path(assigns(:malla_curricular))
  end

  test "should destroy malla_curricular" do
    assert_difference('MallaCurricular.count', -1) do
      delete :destroy, id: @malla_curricular
    end

    assert_redirected_to malla_curriculars_path
  end
end
