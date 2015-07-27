class CreateBasics < ActiveRecord::Migration
  def change
    create_table :basics do |t|
      t.text :value_proposition
      t.text :objective
      t.text :plan_description
      t.references :marketing_plan, index: true

      t.timestamps
    end
  end
end
