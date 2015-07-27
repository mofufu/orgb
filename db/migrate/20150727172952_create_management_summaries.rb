class CreateManagementSummaries < ActiveRecord::Migration
  def change
    create_table :management_summaries do |t|
      t.text :organization_structure
      t.text :management_team
      t.text :team_gaps
      t.text :personnel_plan
      t.references :business_plan, index: true

      t.timestamps
    end
  end
end
