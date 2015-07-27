class CreateAppendixes < ActiveRecord::Migration
  def change
    create_table :appendixes do |t|
      t.references :marketing_plan, index: true
      t.text :appendix_content
      t.text :additional_resources
      t.text :extra_appendix

      t.timestamps
    end
  end
end
