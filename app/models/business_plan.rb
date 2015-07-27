class BusinessPlan < ActiveRecord::Base
  has_one :productandservice
  has_one :market
  has_one :financial_plan
  has_one :management_summary
  has_one :company_summary
  has_one :strategyand_implementation
end
