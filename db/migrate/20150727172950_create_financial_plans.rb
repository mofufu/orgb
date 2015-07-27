class CreateFinancialPlans < ActiveRecord::Migration
  def change
    create_table :financial_plans do |t|
      t.text :important_assumptions
      t.text :key_financial_indicators
      t.text :projected_profit_and_loss
      t.text :projected_cash_flow
      t.text :projected_balance_sheet
      t.text :long_term_financial_plan
      t.references :business_plan, index: true

      t.timestamps
    end
  end
end
