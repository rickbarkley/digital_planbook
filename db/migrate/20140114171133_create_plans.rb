class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :bedrooms
      t.integer :sqfoot
      t.string :levels
      t.string :name
      t.string :half_bath
      t.string :bathrooms
      t.integer :living
      t.string :suite
      t.integer :dining
      t.string :view
      t.integer :garage
      t.string :garage_loc
      t.string :width
      t.string :depth
      t.string :casita
      t.string :court
      t.string :study
      t.string :style
      t.string :media_string

      t.timestamps
    end
  end
end
