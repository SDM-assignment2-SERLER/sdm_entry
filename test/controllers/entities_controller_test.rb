require 'test_helper'

class EntitiesControllerTest < ActionController::TestCase
  setup do
    @entity = entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity" do
    assert_difference('Entity.count') do
      post :create, entity: { evidence_benefit: @entity.evidence_benefit, evidence_context: @entity.evidence_context, evidence_intergrity: @entity.evidence_intergrity, evidence_result: @entity.evidence_result, research_aim: @entity.research_aim, research_metric: @entity.research_metric }
    end

    assert_redirected_to entity_path(assigns(:entity))
  end

  test "should show entity" do
    get :show, id: @entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity
    assert_response :success
  end

  test "should update entity" do
    patch :update, id: @entity, entity: { evidence_benefit: @entity.evidence_benefit, evidence_context: @entity.evidence_context, evidence_intergrity: @entity.evidence_intergrity, evidence_result: @entity.evidence_result, research_aim: @entity.research_aim, research_metric: @entity.research_metric }
    assert_redirected_to entity_path(assigns(:entity))
  end

  test "should destroy entity" do
    assert_difference('Entity.count', -1) do
      delete :destroy, id: @entity
    end

    assert_redirected_to entities_path
  end
end
