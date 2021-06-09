class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :date
      t.string :description
      t.string :image
      t.string :water_type
      t.string :location

      t.timestamps
    end
  end
end
