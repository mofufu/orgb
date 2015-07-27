json.array!(@business_plans) do |business_plan|
  json.extract! business_plan, :id
  json.url business_plan_url(business_plan, format: :json)
end
