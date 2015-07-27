json.array!(@strategyand_implementations) do |strategyand_implementation|
  json.extract! strategyand_implementation, :id, :value_proposition, :competitive_advantage, :positioning_statements, :pricing_strategy, :general_promotion_strategy, :distribution_patterns, :sales_strategy, :sales_programs, :strategic_partnerships, :milestones, :business_plan_id
  json.url strategyand_implementation_url(strategyand_implementation, format: :json)
end
