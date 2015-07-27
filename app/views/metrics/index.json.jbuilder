json.array!(@metrics) do |metric|
  json.extract! metric, :id, :marketing_plan_id, :milestone_of_completion, :success_indicator, :monitoring_method, :review_outcomes
  json.url metric_url(metric, format: :json)
end
