class CreateSavedPlans < ActiveRecord::Migration
  def change
    create_table :saved_plans do |t|
      t.integer :user_id
      t.integer :plan_id

      t.timestamps
    end
  end
end
