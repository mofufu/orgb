require 'test_helper'

class BusinessPlansControllerTest < ActionController::TestCase
  setup do
    @business_plan = business_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_plan" do
    assert_difference('BusinessPlan.count') do
      post :create, business_plan: {  }
    end

    assert_redirected_to business_plan_path(assigns(:business_plan))
  end

  test "should show business_plan" do
    get :show, id: @business_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_plan
    assert_response :success
  end

  test "should update business_plan" do
    patch :update, id: @business_plan, business_plan: {  }
    assert_redirected_to business_plan_path(assigns(:business_plan))
  end

  test "should destroy business_plan" do
    assert_difference('BusinessPlan.count', -1) do
      delete :destroy, id: @business_plan
    end

    assert_redirected_to business_plans_path
  end
end
