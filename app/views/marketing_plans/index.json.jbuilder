json.array!(@marketing_plans) do |marketing_plan|
  json.extract! marketing_plan, :id, :buyer_profile_id
  json.url marketing_plan_url(marketing_plan, format: :json)
end
