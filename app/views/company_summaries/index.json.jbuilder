json.array!(@company_summaries) do |company_summary|
  json.extract! company_summary, :id, :ownership, :start_plan, :locations, :business_plan_id
  json.url company_summary_url(company_summary, format: :json)
end
