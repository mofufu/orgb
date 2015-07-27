class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.references :marketing_plan, index: true
      t.text :milestone_of_completion
      t.text :success_indicator
      t.text :monitoring_method
      t.text :review_outcomes

      t.timestamps
    end
  end
end
