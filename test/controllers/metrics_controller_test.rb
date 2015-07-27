require 'test_helper'

class MetricsControllerTest < ActionController::TestCase
  setup do
    @metric = metrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metric" do
    assert_difference('Metric.count') do
      post :create, metric: { marketing_plan_id: @metric.marketing_plan_id, milestone_of_completion: @metric.milestone_of_completion, monitoring_method: @metric.monitoring_method, review_outcomes: @metric.review_outcomes, success_indicator: @metric.success_indicator }
    end

    assert_redirected_to metric_path(assigns(:metric))
  end

  test "should show metric" do
    get :show, id: @metric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metric
    assert_response :success
  end

  test "should update metric" do
    patch :update, id: @metric, metric: { marketing_plan_id: @metric.marketing_plan_id, milestone_of_completion: @metric.milestone_of_completion, monitoring_method: @metric.monitoring_method, review_outcomes: @metric.review_outcomes, success_indicator: @metric.success_indicator }
    assert_redirected_to metric_path(assigns(:metric))
  end

  test "should destroy metric" do
    assert_difference('Metric.count', -1) do
      delete :destroy, id: @metric
    end

    assert_redirected_to metrics_path
  end
end
