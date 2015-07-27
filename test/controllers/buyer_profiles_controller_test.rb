require 'test_helper'

class BuyerProfilesControllerTest < ActionController::TestCase
  setup do
    @buyer_profile = buyer_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buyer_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buyer_profile" do
    assert_difference('BuyerProfile.count') do
      post :create, buyer_profile: { acquisition_location: @buyer_profile.acquisition_location, buyer_goals: @buyer_profile.buyer_goals, description: @buyer_profile.description, name: @buyer_profile.name, potential_hesitations: @buyer_profile.potential_hesitations, target_features: @buyer_profile.target_features }
    end

    assert_redirected_to buyer_profile_path(assigns(:buyer_profile))
  end

  test "should show buyer_profile" do
    get :show, id: @buyer_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buyer_profile
    assert_response :success
  end

  test "should update buyer_profile" do
    patch :update, id: @buyer_profile, buyer_profile: { acquisition_location: @buyer_profile.acquisition_location, buyer_goals: @buyer_profile.buyer_goals, description: @buyer_profile.description, name: @buyer_profile.name, potential_hesitations: @buyer_profile.potential_hesitations, target_features: @buyer_profile.target_features }
    assert_redirected_to buyer_profile_path(assigns(:buyer_profile))
  end

  test "should destroy buyer_profile" do
    assert_difference('BuyerProfile.count', -1) do
      delete :destroy, id: @buyer_profile
    end

    assert_redirected_to buyer_profiles_path
  end
end
