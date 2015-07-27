require 'test_helper'

class ManagementSummariesControllerTest < ActionController::TestCase
  setup do
    @management_summary = management_summaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:management_summaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create management_summary" do
    assert_difference('ManagementSummary.count') do
      post :create, management_summary: { business_plan_id: @management_summary.business_plan_id, management_team: @management_summary.management_team, organization_structure: @management_summary.organization_structure, personnel_plan: @management_summary.personnel_plan, team_gaps: @management_summary.team_gaps }
    end

    assert_redirected_to management_summary_path(assigns(:management_summary))
  end

  test "should show management_summary" do
    get :show, id: @management_summary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @management_summary
    assert_response :success
  end

  test "should update management_summary" do
    patch :update, id: @management_summary, management_summary: { business_plan_id: @management_summary.business_plan_id, management_team: @management_summary.management_team, organization_structure: @management_summary.organization_structure, personnel_plan: @management_summary.personnel_plan, team_gaps: @management_summary.team_gaps }
    assert_redirected_to management_summary_path(assigns(:management_summary))
  end

  test "should destroy management_summary" do
    assert_difference('ManagementSummary.count', -1) do
      delete :destroy, id: @management_summary
    end

    assert_redirected_to management_summaries_path
  end
end
