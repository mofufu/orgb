class CreateProductandservices < ActiveRecord::Migration
  def change
    create_table :productandservices do |t|
      t.text :description
      t.text :sourcing_and_fulfillment
      t.text :technology_used
      t.text :expansion_plans
      t.references :business_plan, index: true

      t.timestamps
    end
  end
end
