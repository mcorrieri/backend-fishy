class CreateFish < ActiveRecord::Migration[6.1]
  def change
    create_table :fish do |t|
      t.string :image 
      t.string :breed
      t.integer :tanksize
      t.integer :carelevel
      t.string :watertype
      t.integer :owner_id

      t.timestamps
    end
  end
end
