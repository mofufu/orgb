require 'test_helper'

class FinancialPlansControllerTest < ActionController::TestCase
  setup do
    @financial_plan = financial_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financial_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financial_plan" do
    assert_difference('FinancialPlan.count') do
      post :create, financial_plan: { business_plan_id: @financial_plan.business_plan_id, important_assumptions: @financial_plan.important_assumptions, key_financial_indicators: @financial_plan.key_financial_indicators, long_term_financial_plan: @financial_plan.long_term_financial_plan, projected_balance_sheet: @financial_plan.projected_balance_sheet, projected_cash_flow: @financial_plan.projected_cash_flow, projected_profit_and_loss: @financial_plan.projected_profit_and_loss }
    end

    assert_redirected_to financial_plan_path(assigns(:financial_plan))
  end

  test "should show financial_plan" do
    get :show, id: @financial_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financial_plan
    assert_response :success
  end

  test "should update financial_plan" do
    patch :update, id: @financial_plan, financial_plan: { business_plan_id: @financial_plan.business_plan_id, important_assumptions: @financial_plan.important_assumptions, key_financial_indicators: @financial_plan.key_financial_indicators, long_term_financial_plan: @financial_plan.long_term_financial_plan, projected_balance_sheet: @financial_plan.projected_balance_sheet, projected_cash_flow: @financial_plan.projected_cash_flow, projected_profit_and_loss: @financial_plan.projected_profit_and_loss }
    assert_redirected_to financial_plan_path(assigns(:financial_plan))
  end

  test "should destroy financial_plan" do
    assert_difference('FinancialPlan.count', -1) do
      delete :destroy, id: @financial_plan
    end

    assert_redirected_to financial_plans_path
  end
end
