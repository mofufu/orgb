class CreateBusinessPlans < ActiveRecord::Migration
  def change
    create_table :business_plans do |t|

      t.timestamps
    end
  end
end
