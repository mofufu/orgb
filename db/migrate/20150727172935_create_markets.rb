class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.text :targeted_segment_strategy
      t.text :market_needs
      t.text :market_trends
      t.text :market_growth_potential
      t.text :industry_analysis
      t.text :industry_participants
      t.text :distribution_patterns
      t.text :buying_patterns
      t.references :business_plan, index: true

      t.timestamps
    end
  end
end
