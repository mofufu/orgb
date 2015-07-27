json.array!(@productandservices) do |productandservice|
  json.extract! productandservice, :id, :description, :sourcing_and_fulfillment, :technology_used, :expansion_plans, :business_plan_id
  json.url productandservice_url(productandservice, format: :json)
end
