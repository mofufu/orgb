require 'test_helper'

class StrategyandImplementationsControllerTest < ActionController::TestCase
  setup do
    @strategyand_implementation = strategyand_implementations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strategyand_implementations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strategyand_implementation" do
    assert_difference('StrategyandImplementation.count') do
      post :create, strategyand_implementation: { business_plan_id: @strategyand_implementation.business_plan_id, competitive_advantage: @strategyand_implementation.competitive_advantage, distribution_patterns: @strategyand_implementation.distribution_patterns, general_promotion_strategy: @strategyand_implementation.general_promotion_strategy, milestones: @strategyand_implementation.milestones, positioning_statements: @strategyand_implementation.positioning_statements, pricing_strategy: @strategyand_implementation.pricing_strategy, sales_programs: @strategyand_implementation.sales_programs, sales_strategy: @strategyand_implementation.sales_strategy, strategic_partnerships: @strategyand_implementation.strategic_partnerships, value_proposition: @strategyand_implementation.value_proposition }
    end

    assert_redirected_to strategyand_implementation_path(assigns(:strategyand_implementation))
  end

  test "should show strategyand_implementation" do
    get :show, id: @strategyand_implementation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strategyand_implementation
    assert_response :success
  end

  test "should update strategyand_implementation" do
    patch :update, id: @strategyand_implementation, strategyand_implementation: { business_plan_id: @strategyand_implementation.business_plan_id, competitive_advantage: @strategyand_implementation.competitive_advantage, distribution_patterns: @strategyand_implementation.distribution_patterns, general_promotion_strategy: @strategyand_implementation.general_promotion_strategy, milestones: @strategyand_implementation.milestones, positioning_statements: @strategyand_implementation.positioning_statements, pricing_strategy: @strategyand_implementation.pricing_strategy, sales_programs: @strategyand_implementation.sales_programs, sales_strategy: @strategyand_implementation.sales_strategy, strategic_partnerships: @strategyand_implementation.strategic_partnerships, value_proposition: @strategyand_implementation.value_proposition }
    assert_redirected_to strategyand_implementation_path(assigns(:strategyand_implementation))
  end

  test "should destroy strategyand_implementation" do
    assert_difference('StrategyandImplementation.count', -1) do
      delete :destroy, id: @strategyand_implementation
    end

    assert_redirected_to strategyand_implementations_path
  end
end
