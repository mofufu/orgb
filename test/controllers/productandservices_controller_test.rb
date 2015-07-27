require 'test_helper'

class ProductandservicesControllerTest < ActionController::TestCase
  setup do
    @productandservice = productandservices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productandservices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productandservice" do
    assert_difference('Productandservice.count') do
      post :create, productandservice: { business_plan_id: @productandservice.business_plan_id, description: @productandservice.description, expansion_plans: @productandservice.expansion_plans, sourcing_and_fulfillment: @productandservice.sourcing_and_fulfillment, technology_used: @productandservice.technology_used }
    end

    assert_redirected_to productandservice_path(assigns(:productandservice))
  end

  test "should show productandservice" do
    get :show, id: @productandservice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productandservice
    assert_response :success
  end

  test "should update productandservice" do
    patch :update, id: @productandservice, productandservice: { business_plan_id: @productandservice.business_plan_id, description: @productandservice.description, expansion_plans: @productandservice.expansion_plans, sourcing_and_fulfillment: @productandservice.sourcing_and_fulfillment, technology_used: @productandservice.technology_used }
    assert_redirected_to productandservice_path(assigns(:productandservice))
  end

  test "should destroy productandservice" do
    assert_difference('Productandservice.count', -1) do
      delete :destroy, id: @productandservice
    end

    assert_redirected_to productandservices_path
  end
end
