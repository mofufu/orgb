class CreateCompanySummaries < ActiveRecord::Migration
  def change
    create_table :company_summaries do |t|
      t.string :ownership
      t.text :start_plan
      t.string :locations
      t.references :business_plan, index: true

      t.timestamps
    end
  end
end
