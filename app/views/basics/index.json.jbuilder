json.array!(@basics) do |basic|
  json.extract! basic, :id, :value_proposition, :objective, :plan_description, :marketing_plan_id
  json.url basic_url(basic, format: :json)
end
