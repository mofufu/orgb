json.array!(@management_summaries) do |management_summary|
  json.extract! management_summary, :id, :organization_structure, :management_team, :team_gaps, :personnel_plan, :business_plan_id
  json.url management_summary_url(management_summary, format: :json)
end
