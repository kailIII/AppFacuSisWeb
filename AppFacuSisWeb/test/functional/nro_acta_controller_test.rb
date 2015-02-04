require 'test_helper'

class NroActaControllerTest < ActionController::TestCase
  setup do
    @nro_actum = nro_acta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nro_acta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nro_actum" do
    assert_difference('NroActum.count') do
      post :create, nro_actum: { nro_acta: @nro_actum.nro_acta, tomo: @nro_actum.tomo }
    end

    assert_redirected_to nro_actum_path(assigns(:nro_actum))
  end

  test "should show nro_actum" do
    get :show, id: @nro_actum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nro_actum
    assert_response :success
  end

  test "should update nro_actum" do
    put :update, id: @nro_actum, nro_actum: { nro_acta: @nro_actum.nro_acta, tomo: @nro_actum.tomo }
    assert_redirected_to nro_actum_path(assigns(:nro_actum))
  end

  test "should destroy nro_actum" do
    assert_difference('NroActum.count', -1) do
      delete :destroy, id: @nro_actum
    end

    assert_redirected_to nro_acta_path
  end
end
