class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :date
      t.string :description
      t.string :image
      t.string :location
      t.integer :price
      t.string :comment 
      t.integer :user_id
      t.integer :fish_id 

      t.timestamps
    end
  end
end
