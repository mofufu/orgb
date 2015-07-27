require 'test_helper'

class StrategiesControllerTest < ActionController::TestCase
  setup do
    @strategy = strategies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strategies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strategy" do
    assert_difference('Strategy.count') do
      post :create, strategy: { distribution_channels: @strategy.distribution_channels, end_date: @strategy.end_date, estimated_cost: @strategy.estimated_cost, implementation_team: @strategy.implementation_team, marketing_plan_id: @strategy.marketing_plan_id, media_strategy: @strategy.media_strategy, start_date: @strategy.start_date, type_of_activity: @strategy.type_of_activity }
    end

    assert_redirected_to strategy_path(assigns(:strategy))
  end

  test "should show strategy" do
    get :show, id: @strategy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strategy
    assert_response :success
  end

  test "should update strategy" do
    patch :update, id: @strategy, strategy: { distribution_channels: @strategy.distribution_channels, end_date: @strategy.end_date, estimated_cost: @strategy.estimated_cost, implementation_team: @strategy.implementation_team, marketing_plan_id: @strategy.marketing_plan_id, media_strategy: @strategy.media_strategy, start_date: @strategy.start_date, type_of_activity: @strategy.type_of_activity }
    assert_redirected_to strategy_path(assigns(:strategy))
  end

  test "should destroy strategy" do
    assert_difference('Strategy.count', -1) do
      delete :destroy, id: @strategy
    end

    assert_redirected_to strategies_path
  end
end
