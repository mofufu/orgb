class BusinessPlan < ActiveRecord::Base
  has_one :productandservice
  has_one :market
  has_one :financial_plan
end
