class CreateMarketingPlans < ActiveRecord::Migration
  def change
    create_table :marketing_plans do |t|
      t.references :buyer_profile, index: true

      t.timestamps
    end
  end
end
