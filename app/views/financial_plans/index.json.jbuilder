json.array!(@financial_plans) do |financial_plan|
  json.extract! financial_plan, :id, :important_assumptions, :key_financial_indicators, :projected_profit_and_loss, :projected_cash_flow, :projected_balance_sheet, :long_term_financial_plan, :business_plan_id
  json.url financial_plan_url(financial_plan, format: :json)
end
