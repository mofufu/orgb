class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.text :description
      t.references :section, index: true

      t.timestamps
    end
  end
end
