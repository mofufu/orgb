class BusinessPlan < ActiveRecord::Base
  has_one :productandservice
  has_one :market
end
