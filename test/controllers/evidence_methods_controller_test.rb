require 'test_helper'

class EvidenceMethodsControllerTest < ActionController::TestCase
  setup do
    @evidence_method = evidence_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evidence_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evidence_method" do
    assert_difference('EvidenceMethod.count') do
      post :create, evidence_method: { name: @evidence_method.name, sort: @evidence_method.sort }
    end

    assert_redirected_to evidence_method_path(assigns(:evidence_method))
  end

  test "should show evidence_method" do
    get :show, id: @evidence_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evidence_method
    assert_response :success
  end

  test "should update evidence_method" do
    patch :update, id: @evidence_method, evidence_method: { name: @evidence_method.name, sort: @evidence_method.sort }
    assert_redirected_to evidence_method_path(assigns(:evidence_method))
  end

  test "should destroy evidence_method" do
    assert_difference('EvidenceMethod.count', -1) do
      delete :destroy, id: @evidence_method
    end

    assert_redirected_to evidence_methods_path
  end
end
