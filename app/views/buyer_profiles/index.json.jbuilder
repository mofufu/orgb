json.array!(@buyer_profiles) do |buyer_profile|
  json.extract! buyer_profile, :id, :name, :description, :buyer_goals, :target_features, :potential_hesitations, :acquisition_location
  json.url buyer_profile_url(buyer_profile, format: :json)
end
