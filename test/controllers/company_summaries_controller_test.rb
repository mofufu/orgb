require 'test_helper'

class CompanySummariesControllerTest < ActionController::TestCase
  setup do
    @company_summary = company_summaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_summaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_summary" do
    assert_difference('CompanySummary.count') do
      post :create, company_summary: { business_plan_id: @company_summary.business_plan_id, locations: @company_summary.locations, ownership: @company_summary.ownership, start_plan: @company_summary.start_plan }
    end

    assert_redirected_to company_summary_path(assigns(:company_summary))
  end

  test "should show company_summary" do
    get :show, id: @company_summary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_summary
    assert_response :success
  end

  test "should update company_summary" do
    patch :update, id: @company_summary, company_summary: { business_plan_id: @company_summary.business_plan_id, locations: @company_summary.locations, ownership: @company_summary.ownership, start_plan: @company_summary.start_plan }
    assert_redirected_to company_summary_path(assigns(:company_summary))
  end

  test "should destroy company_summary" do
    assert_difference('CompanySummary.count', -1) do
      delete :destroy, id: @company_summary
    end

    assert_redirected_to company_summaries_path
  end
end
