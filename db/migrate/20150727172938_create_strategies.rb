class CreateStrategies < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.references :marketing_plan, index: true
      t.string :type_of_activity
      t.date :start_date
      t.date :end_date
      t.string :implementation_team
      t.string :estimated_cost
      t.text :media_strategy
      t.text :distribution_channels

      t.timestamps
    end
  end
end
