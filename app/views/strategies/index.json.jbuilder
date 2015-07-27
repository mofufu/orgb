json.array!(@strategies) do |strategy|
  json.extract! strategy, :id, :marketing_plan_id, :type_of_activity, :start_date, :end_date, :implementation_team, :estimated_cost, :media_strategy, :distribution_channels
  json.url strategy_url(strategy, format: :json)
end
