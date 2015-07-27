class CreateStrategyandImplementations < ActiveRecord::Migration
  def change
    create_table :strategyand_implementations do |t|
      t.text :value_proposition
      t.text :competitive_advantage
      t.text :positioning_statements
      t.text :pricing_strategy
      t.text :general_promotion_strategy
      t.text :distribution_patterns
      t.text :sales_strategy
      t.text :sales_programs
      t.text :strategic_partnerships
      t.text :milestones
      t.references :business_plan, index: true

      t.timestamps
    end
  end
end
