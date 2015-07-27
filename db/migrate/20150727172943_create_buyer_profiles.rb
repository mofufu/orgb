class CreateBuyerProfiles < ActiveRecord::Migration
  def change
    create_table :buyer_profiles do |t|
      t.string :name
      t.text :description
      t.text :buyer_goals
      t.text :target_features
      t.text :potential_hesitations
      t.text :acquisition_location

      t.timestamps
    end
  end
end
