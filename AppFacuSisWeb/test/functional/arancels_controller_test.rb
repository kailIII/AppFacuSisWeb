require 'test_helper'

class ArancelsControllerTest < ActionController::TestCase
  setup do
    @arancel = arancels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arancels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arancel" do
    assert_difference('Arancel.count') do
      post :create, arancel: { nombre: @arancel.nombre }
    end

    assert_redirected_to arancel_path(assigns(:arancel))
  end

  test "should show arancel" do
    get :show, id: @arancel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arancel
    assert_response :success
  end

  test "should update arancel" do
    put :update, id: @arancel, arancel: { nombre: @arancel.nombre }
    assert_redirected_to arancel_path(assigns(:arancel))
  end

  test "should destroy arancel" do
    assert_difference('Arancel.count', -1) do
      delete :destroy, id: @arancel
    end

    assert_redirected_to arancels_path
  end
end
