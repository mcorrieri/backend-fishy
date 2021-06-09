class CreateFish < ActiveRecord::Migration[6.1]
  def change
    create_table :fish do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :name
      t.integer :care_level

      t.timestamps
    end
  end
end
